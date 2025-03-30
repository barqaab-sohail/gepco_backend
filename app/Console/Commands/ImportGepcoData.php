<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use App\Models\{GridStation, Circle, Division, SubDivision, Feeder};
use Maatwebsite\Excel\Facades\Excel;

class ImportGepcoData extends Command
{
    protected $signature = 'import:gepco';
    protected $description = 'Import GEPCO data from Excel file';

    public function handle()
    {
        $filePath = 'C:\Users\sohai\OneDrive\Desktop\GEPCO.xlsx';

        if (!file_exists($filePath)) {
            $this->error("File not found at: {$filePath}");
            return;
        }

        $this->info("Starting import from: {$filePath}");

        try {
            $data = Excel::toArray([], $filePath);

            $totalRows = count($data[0]) - 1; // Subtract header row
            $this->info("Found {$totalRows} records to process");

            $bar = $this->output->createProgressBar($totalRows);

            $importedCount = 0;
            $skippedCount = 0;

            foreach ($data[0] as $index => $row) {
                // Skip header row
                if ($index === 0 || empty($row[0])) {
                    $skippedCount++;
                    $bar->advance();
                    continue;
                }

                try {
                    // Process grid station
                    $gridStation = GridStation::firstOrCreate([
                        'name' => $row[1],
                        'company_id' => $row[9],
                        'voltage' => $row[10] // Extract voltage from name
                    ]);

                    // Process circle
                    $circle = Circle::firstOrCreate([
                        'name' => $row[3],
                        'company_id' => $row[9],
                    ]);

                    // Process division
                    $division = Division::firstOrCreate([
                        'circle_id' => $circle->id,
                        'name' => $row[4]
                    ]);

                    // Process sub-division
                    $subDivision = SubDivision::firstOrCreate([
                        'division_id' => $division->id,
                        'name' => $row[5],
                        'company_id' => $row[9],
                        'code' => $row[8]
                    ]);

                    // Create feeder
                    Feeder::firstOrCreate([
                        'grid_station_id' => $gridStation->id,
                        'circle_id' => $circle->id,
                        'division_id' => $division->id,
                        'sub_division_id' => $subDivision->id,
                        'name' => $row[2],
                        'feeder_code' => $row[6],
                        'category' => $row[7]
                    ]);

                    $importedCount++;
                } catch (\Exception $e) {
                    $this->error("Error processing row {$index}: " . $e->getMessage());
                    $skippedCount++;
                }

                $bar->advance();
            }

            $bar->finish();

            $this->newLine(2);
            $this->info("Import completed!");
            $this->info("Imported: {$importedCount} records");
            $this->info("Skipped: {$skippedCount} records");

        } catch (\Exception $e) {
            $this->error("Import failed: " . $e->getMessage());
        }
    }
}