pandoc index.md -s -o index.html  --template=template.html  --include-in-header=header.html --metadata title="Prof. Ricardo Miranda Martins"
pandoc teaching.md -s -o teaching.html  --template=template.html --include-in-header=header.html --metadata title="Teaching"
pandoc publications.md -s -o publications.html  --template=template.html --include-in-header=header.html --metadata title="Publications"
pandoc 404.md -s -o 404.html --template=template.html --include-in-header=header.html --metadata title="Error 404"
pandoc agenda.md -s -o agenda.html  --template=template.html  --include-in-header=header.html --metadata title="Agenda"
pandoc  --template=template.html  --include-in-header=header.html -s divulga-nota-moodle-mala-direta.md -o divulga-nota-moodle-mala-direta.html --metadata title="Tutoriais sobre nova política de divulgação de notas"



pandoc cursos/2025-2-ma211-gh/2025-2-ma211-gh.md -s -o cursos/2025-2-ma211-gh/2025-2-ma211-gh.html --template=template.html  --include-in-header=header.html --metadata title="MA211"
sed 's/href="\([a-z]*\)\.html"/href="..\/..\/\1.html"/g' cursos/2025-2-ma211-gh/2025-2-ma211-gh.html > cursos/2025-2-ma211-gh/2025-2-ma211-gh-novo.html
mv cursos/2025-2-ma211-gh/2025-2-ma211-gh-novo.html cursos/2025-2-ma211-gh/2025-2-ma211-gh.html

pandoc cursos/2025-2-mm996-a/2025-2-mm996-a.md -s -o cursos/2025-2-mm996-a/2025-2-mm996-a.html --template=template.html --include-in-header=header.html --metadata title="MM996"
sed 's/href="\([a-z]*\)\.html"/href="..\/..\/\1.html"/g' cursos/2025-2-mm996-a/2025-2-mm996-a.html > cursos/2025-2-mm996-a/2025-2-mm996-a-novo.html
mv cursos/2025-2-mm996-a/2025-2-mm996-a-novo.html cursos/2025-2-mm996-a/2025-2-mm996-a.html

pandoc cursos/ga-youtube/ga-youtube.md -s -o cursos/ga-youtube/ga-youtube.html --template=template.html --include-in-header=header.html --metadata title="GA no YouTube"
sed 's/href="\([a-z]*\)\.html"/href="..\/..\/\1.html"/g' cursos/ga-youtube/ga-youtube.html > cursos/ga-youtube/ga-youtube-novo.html
mv cursos/ga-youtube/ga-youtube-novo.html cursos/ga-youtube/ga-youtube.html 
