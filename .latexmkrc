# Custom dependency for nomencl package
add_cus_dep('nlo', 'nls', 0, 'makenlo2nls');

sub makenlo2nls {
    system("makeindex -s nomencl.ist -o $_[0].nls $_[0].nlo");
}

# Clean up auxiliary files
push @generated_exts, 'nlo', 'nls';

# Use lualatex as the compiler
$pdf_mode = 4;  # 4 = lualatex