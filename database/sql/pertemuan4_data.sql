USE praktikum_web_2401020082;

INSERT INTO program_studi (nama_prodi) VALUES
    ('Teknik Perkapalan'),
    ('Teknik Elektro');

INSERT INTO mahasiswa
    (nim, nama, email, usia, program_studi_id)
VALUES
    ('2401010001', 'Rina Marlina',
     'rina@example.com', 19, 1),
    ('2401010002', 'Dimas Aditya',
     'dimas@example.com', 20, 1),
    ('2401020001', 'Salsabila Putri',
     'salsa@example.com', 21, 2),
    ('2401020099', 'Data Sementara',
     'sementara@example.com', 18, 2);

UPDATE mahasiswa
SET email = 'rina.marlina@example.com'
WHERE nim = '2401010001';

DELETE FROM mahasiswa
WHERE nim = '2401020099';

SELECT m.nim, m.nama, m.email, m.usia,
       p.nama_prodi
FROM mahasiswa AS m
JOIN program_studi AS p
    ON p.id = m.program_studi_id
ORDER BY m.nim;
