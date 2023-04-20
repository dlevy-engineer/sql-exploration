# MySQL Types
---

## Numeric Types and Lengths

| Data Type | Storage Required   |
|------|:------|
| TinyInteger: | `2^(8*1)`	= 256 |
| SmallInteger: | `2^(8*2)`	= 65,536 |
| MediumInteger: | `2^(8*3)`	= 16,777,216 |
| Integer: | `2^(8*4)`	= 4,294,967,296 |
| BigInteger: | `2^(8*8)`	= 18,446,744,073,709,551,616 |

---

## TEXT/BLOB

| Data Type | Storage Required   |
|------|:------|
| TINYTEXT: | `2^8 -1`	= 255 characters		- 255 B |
| TEXT: | `2^16 -1`	= 65,535 characters		- 64 KB |
| MEDIUMTEXT: | `2^24 -1`	= 16,777,215			- 16 MB |
| LONGTEXT: | `2^32 -1`	= 4,294,967,295 characters	- 4 GB |

---

## Numeric Types and Lengths

| Data Type | Storage Required   |
|------|:------|
| TINYINT | `1 byte` |
| SMALLINT | `2 bytes` |
| MEDIUMINT | `3 bytes` |
| INT, INTEGER | `4 bytes` |
| BIGINT | `8 bytes` |
| FLOAT(p) | `4 bytes` if 0 <= p <= 24, `8 bytes` if 25 <= p <= 53 |
| FLOAT | `4 bytes` |
| DOUBLE [PRECISION], REAL | `8 bytes` |
| DECIMAL(M,D), NUMERIC(M,D) | Varies; |
| BIT(M) | approximately `(M+7)/8 bytes` |

---

## Date Types and Lengths

| Data Type | Storage Required   |
|------|:------|
| YEAR | `1 byte` 	1 byte |
| DATE | `3 bytes` 	3 bytes |
| TIME | `3 bytes` 	3 bytes + fractional seconds storage |
| DATETIME | `8 bytes` 	5 bytes + fractional seconds storage |
| TIMESTAMP | `4 bytes` 	4 bytes + fractional seconds storage |

---

## TEXT/BLOB Types and Lengths

| Data Type | Storage Required   |
|------|:------|
| CHAR(M) | The compact family of InnoDB row formats optimize storage for variable-length character sets. See COMPACT Row Format Storage Characteristics. Otherwise, M × w bytes, <= M <= 255, where w is the number of bytes required for the maximum-length character in the character set. |
| BINARY(M) | M bytes, 0 <= M <= 255 |
| VARCHAR(M), VARBINARY(M) | L + 1 bytes if column values require 0 ? 255 bytes, L + 2 bytes if values may require more than 255 bytes |
| TINYBLOB, TINYTEXT | L + 1 bytes, where L < 28 |
| BLOB, TEXT | L + 2 bytes, where L < 216 |
| MEDIUMBLOB, MEDIUMTEXT | L + 3 bytes, where L < 224 |
| LONGBLOB, LONGTEXT | L + 4 bytes, where L < 232 |
| ENUM('value1','value2',...) | 1 or 2 bytes, depending on the number of enumeration values (65,535 values maximum) |
| SET('value1','value2',...) | 1, 2, 3, 4, or 8 bytes, depending on the number of set members (64 members maximum) |
`------------------------------`

---