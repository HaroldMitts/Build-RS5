# Build-RS5 Build scripts for Windows 10, version 1809
The scripts included in this repository will enable you to build a Windows 10, version 1809 English and Japanese Multilanguage 64-bit image including Features on Demand and AppX localized updates

I will add 32-bit as time permits and update this repository, but if you want to add 32-bit now, its pretty much the same process, just some different source files - go for it.

#### To use these scripts, you will need access to the Windows 10, version 1809 OPK files, as follows;

* X21-87808 Win 10 1809 32/64/ARM64 OPK ADK 
* X21-87813 Win 10 1809 32/64/ARM64 MultiLang OPK App Update
* X21-87814 Win 10 1809 32/64/ARM64 MultiLang OPK LangPackAll/LIP
* X21-87815 Win 10 1809 32-bit MultiLang OPK Feat on Demand
* X21-87816 Win 10 1809 64-bit MultiLang OPK Feat on Demand
* X21-87818 Win 10 1809 32/64 English Home/Pro/SL/S/N OPK

1. The scripts leverage a working directory on a technician PC located at C:\TMP
2. The scripts also leverage a mount path at C:\Mount

If you decide you want to build at a different location, you will need to modify the paths in the scripts appropriately.
