<!DOCTYPE html>
<html>
<head>
    <title>Latihan PHP</title>
</head>
<body>
    <h2>Hasil Latihan PHP</h2>
    <p>Nama: {{ $nama }}</p>
    <p>Daftar nilai:</p>
    <ul>
        @foreach ($nilai as $n)
            <li>{{ $n }}</li>
        @endforeach
    </ul>
    <p>Rata-rata: {{ number_format($rataRata, 2) }}</p>
    <p>Status: {{ $status }}</p>
</body>
</html>