use [DevFBERPTests];

-- Узнаем общий размер БД

SELECT
    SUM(CAST(size / 128.0 AS DECIMAL(17,2)))
					AS [Размер в MB]
    
FROM sys.database_files

-- Узнаем размер каждого файла в БД

SELECT 
    name            AS [Логическое имя файла],     
    physical_name   AS [Путь и имя файла в ОС],
    state_desc      AS [Состояние файла],
    
    CAST(size / 128.0 AS DECIMAL(17,2))
                    AS [Размер в MB]
    
FROM sys.database_files