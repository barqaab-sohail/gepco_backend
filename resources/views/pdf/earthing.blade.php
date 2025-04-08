<!DOCTYPE html>
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Earthing Report</title>
    <style>
        table {
            width: 100%;
            border-collapse: collapse;
        }

        th,
        td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: left;
        }

        .image-cell {
            width: 100px;
        }

        .image-cell img {
            max-width: 100%;
            height: auto;
        }
    </style>
</head>

<body>
    <h1>Earthing Details Report</h1>
    <table>
        <thead>
            <tr>
                <th>Name of Feeder</th>
                <th>Location</th>
                <th>Tower Structure</th>
                <th>Category</th>
                <th>Tag No</th>
                <th>Rod (No.)</th>
                <th>Earth Wire (Mtrs.)</th>
                <th>Before (Ω)</th>
                <th>After (Ω)</th>
                <th class="image-cell">Image</th> <!-- New column for image -->
            </tr>
        </thead>
        <tbody>
            @foreach($data as $item)
            <tr>
                <td>{{ $item->feeder->name??'' }}</td>
                <td>{{ $item->latitude}}, {{$item->longitude }}</td>
                <td>{{ $item->towerStructure->name??'' }}</td>
                <td>{{ $item->category->name??'' }}</td>
                <td>{{ $item->tage_no }}</td>
                <td>{{ $item->rod }}</td>
                <td>{{ $item->earth_wire }}</td>
                <td>{{ $item->earthing_before }}</td>
                <td>{{ $item->earthing_after }}</td>
                <td class="image-cell">
                    @if($item->image && $item->image->path)
                    @php
                    // Convert storage path to absolute path
                    $imagePath = storage_path('app/public/' . $item->image->path);
                    @endphp
                    @if(file_exists($imagePath))
                    <img src="{{ $imagePath }}" alt="Earthing Image">
                    @else
                    <span>Image missing</span>
                    @endif
                    @else
                    <span>No image</span>
                    @endif
                </td>
            </tr>
            @endforeach
        </tbody>
    </table>
</body>

</html>