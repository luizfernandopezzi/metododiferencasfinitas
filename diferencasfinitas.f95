!NOME DA PROGRAMAÇÃO
program TRABALHO1

    !DECLARAÇÃO PARA FUNCIONAR EM LINGUAGENS ANTERIORES
implicit NONE

!DECLARAÇÃO DE VARIÁVEIS UTILIZANDO DOUBLE PRECISION
real*8::x,Dx,DDS,CDS,UDS,ErrDDS,ErrCDS,ErrUDS,FxWEST,FxPOINT,FxEST !UTILIZADO Fx PARA FUNÇÃO COS(X) PARA OS ELEMENTOS ANALISADOS

!INÍCIO DA PROGRAMAÇÃO/CABEÇALHO PARA X=1
write(*,*)"CALCULOS DO METODO DE DIFERENCAS FINITAS DE COSSENO DE X"
write(*,*)""
write(*,*)"ASSUMINDO X=1, TEMOS QUE:"
write(*,*)""
write(*,*)"LEGENDA:"
write(*,*)"Dx: DIMENSÃO DO ELEMENTO DISCRETIZADO"
write(*,*)"DDS: DOWNSTREAM DIFFERENCING SCHEME - DIFERENCA FINITA ADIANTADA"
write(*,*)"ErrDDS: ERRO RELATIVO DA DIFERENCA FINITA ADIANTADA"
write(*,*)"CDS: CENTRAL DIFFERENCING SCHEME - DIFERENCA FINITA CENTRAL"
write(*,*)"ErrCDS: ERRO RELATIVO DA DIFERENCA FINITA CENTRAL"
write(*,*)"UDS: UPSTREAM DIFFERENCING SCHEME - DIFERENCA FINITA ATRASADA"
write(*,*)"ErrUDS: ERRO RELATIVO DA DIFERENCA FINITA ATRASADA"
write(*,*)""
write(*,*)"       Dx            DDS           ErrDDS             CDS              ErrCDS          UDS         ErrUDS"

!ABRINDO O ARQUIVO DE SAÍDA DE DADOS
open (unit=10,file='TRABALHO1.out')
write(10,*)"CALCULOS DO METODO DE DIFERENCAS FINITAS DE COSSENO DE X"
write(10,*)""
write(10,*)"ASSUMINDO X=1, TEMOS QUE:"
write(10,*)""
write(10,*)"LEGENDA:"
write(10,*)"Dx: DIMENSÃO DO ELEMENTO DISCRETIZADO"
write(10,*)"DDS: DOWNSTREAM DIFFERENCING SCHEME - DIFERENCA FINITA ADIANTADA"
write(10,*)"ErrDDS: ERRO RELATIVO DA DIFERENCA FINITA ADIANTADA"
write(10,*)"CDS: CENTRAL DIFFERENCING SCHEME - DIFERENCA FINITA CENTRAL"
write(10,*)"ErrCDS: ERRO RELATIVO DA DIFERENCA FINITA CENTRAL"
write(10,*)"UDS: UPSTREAM DIFFERENCING SCHEME - DIFERENCA FINITA ATRASADA"
write(10,*)"ErrUDS: ERRO RELATIVO DA DIFERENCA FINITA ATRASADA"
write(10,*)""
write(10,*)"       Dx            DDS           ErrDDS             CDS              ErrCDS          UDS         ErrUDS"

x=1
Dx=0.5
DO WHILE(Dx>1e-10)
FxWEST=COS(x-Dx)
FxPOINT=COS(x)
FxEST=COS(x+Dx)
DDS=(FxEST-FxPOINT)/Dx
ErrDDS=ABS(((-SIN(X))-DDS)/(-SIN(X))*100)
CDS=(FxEST-FxWEST)/(2*Dx)
ErrCDS=ABS(((-SIN(X))-CDS)/(-SIN(X))*100)
UDS=(FxPOINT-FxWEST)/Dx
ErrUDS=ABS(((-SIN(X))-UDS)/(-SIN(X))*100)
write(*,'(10(F14.10,2x))')Dx,DDS,ErrDDS,CDS,ErrCDS,UDS,ErrUDS
write(10,'(10(F14.10,2x))')Dx,DDS,ErrDDS,CDS,ErrCDS,UDS,ErrUDS
Dx=Dx/2
END DO

!INÍCIO DA PROGRAMAÇÃO/CABEÇALHO PARA X=3
write(*,*)""
write(*,*)"ASSUMINDO X=3, TEMOS QUE:"
write(*,*)""
write(*,*)"LEGENDA:"
write(*,*)"Dx: DISCRETIZACOES"
write(*,*)"DDS: DOWNSTREAM DIFFERENCING SCHEME - DIFERENCA FINITA ADIANTADA"
write(*,*)"ErrDDS: ERRO RELATIVO DA DIFERENCA FINITA ADIANTADA"
write(*,*)"CDS: CENTRAL DIFFERENCING SCHEME - DIFERENCA FINITA CENTRAL"
write(*,*)"ErrCDS: ERRO RELATIVO DA DIFERENCA FINITA CENTRAL"
write(*,*)"UDS: UPSTREAM DIFFERENCING SCHEME - DIFERENCA FINITA ATRASADA"
write(*,*)"ErrUDS: ERRO RELATIVO DA DIFERENCA FINITA ATRASADA"
write(*,*)""
write(*,*)"       Dx            DDS           ErrDDS             CDS              ErrCDS          UDS         ErrUDS"

write(10,*)""
write(10,*)"ASSUMINDO X=3, TEMOS QUE:"
write(10,*)""
write(10,*)"LEGENDA:"
write(10,*)"Dx: DISCRETIZACOES"
write(10,*)"DDS: DOWNSTREAM DIFFERENCING SCHEME - DIFERENCA FINITA ADIANTADA"
write(10,*)"ErrDDS: ERRO RELATIVO DA DIFERENCA FINITA ADIANTADA"
write(10,*)"CDS: CENTRAL DIFFERENCING SCHEME - DIFERENCA FINITA CENTRAL"
write(10,*)"ErrCDS: ERRO RELATIVO DA DIFERENCA FINITA CENTRAL"
write(10,*)"UDS: UPSTREAM DIFFERENCING SCHEME - DIFERENCA FINITA ATRASADA"
write(10,*)"ErrUDS: ERRO RELATIVO DA DIFERENCA FINITA ATRASADA"
write(10,*)""
write(10,*)"       Dx            DDS           ErrDDS             CDS              ErrCDS          UDS         ErrUDS"

x=3
Dx=0.5
do while(Dx>1e-10)
FxWEST=COS(x-Dx)
FxPOINT=COS(x)
FxEST=COS(x+Dx)
DDS=(FxEST-FxPOINT)/Dx
ErrDDS=ABS(((-SIN(X))-DDS)/(-SIN(X))*100)
CDS=(FxEST-FxWEST)/(2*Dx)
ErrCDS=ABS(((-SIN(X))-CDS)/(-SIN(X))*100)
UDS=(FxPOINT-FxWEST)/Dx
ErrUDS=ABS(((-SIN(X))-UDS)/(-SIN(X))*100)
write(*,'(10(F14.10,2x))')Dx,DDS,ErrDDS,CDS,ErrCDS,UDS,ErrUDS
write(10,'(10(F14.10,2x))')Dx,DDS,ErrDDS,CDS,ErrCDS,UDS,ErrUDS
Dx=Dx/2
end do

!FECHA O ARQUIVO DE SAÍDA DE DADOS
CLOSE(10)

!FIM DA PROGRAMAÇÃO
end program TRABALHO1
