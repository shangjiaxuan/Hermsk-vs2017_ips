C parsewf.hermsk.f
C Sort the wave functions out of hswf.out output file.
C   NOTE: Normalized radial wavefunctions, PNL(r) = rR(r).
C       Reads   - TITLE and Z 
C                 total # of wavefunctions, NCSPVS
C                 loop through core and valence subshells reading
C                   L, orbital quantum number
C                   KKK, radial mesh cut-off point
C                   WWNL, fractional electron occupancy
C                   wavefunction values for that subshell
C       Outputs - normalized radial wave functions in two columns as:
C                 Column 1 = R, Column 2 = Normalized WF
C                 with each orbital subshell denoted by a header of 
C                 n,l,occupancy.
      
      PROGRAM WAVEFUNC

      DIMENSION PNL(5), R(441)
      CHARACTER*8 TITLE(9)

      OPEN( 5, FILE = 'hswf.out',   STATUS = 'OLD')
      OPEN(10, FILE = 'plotwf.out', STATUS = 'NEW')

      READ (5,1001) TITLE
      READ (5,1001) TITLE
      READ (5,1003) Z
 1001 FORMAT (10A8)
 1003 FORMAT (F9.4)

      WRITE (10,*)TITLE
      WRITE (10,*)'Z =     ', Z
      WRITE (10,*)'---------------------------------'

C ----------------------------------------------------------------------
C Construct R Mesh
C ----------------------------------------------------------------------
      R(1) = 0.0
      DR = 0.00125 * 0.885341377 / EXP(ALOG(Z)/3.0)
      DO i = 2,441
        IF (MOD(i,40) .EQ. 2) DR = DR + DR
        R(i) = R(i-1)+ DR
      END DO 

C ----------------------------------------------------------------------
C Sort through wf file and output plottable data
C ----------------------------------------------------------------------
      READ (5,1004) NCSPVS
 1004 FORMAT(I4)

      N = 0
      DO i = 1,NCSPVS
        READ (5,1004) L
        READ (5,1004) KKK
        READ (5,1003) WWNL
        IF (L .EQ. 0) N = N + 1
        WWNL = WWNL * (4*L + 2)
        WRITE (10,1005) N, L, WWNL
 1005   FORMAT ('            N,L,W = ', I1, ',', I1, ',', F5.2)
        KKK = KKK - 1
        DO j = 1,KKK,5
          READ (5,1006) (PNL(k),k = 1,5)
          DO k = 1,5
            WRITE (10,1007) R(j-1+k),PNL(k)
          END DO
 1006     FORMAT (1P5E14.7)
 1007     FORMAT (F10.6, '  ', 1PE11.4)
        END DO
        READ (5,1009) PNL(1),Z,NC
 1009   FORMAT (1PE14.7, 58X, I3, I4)
        WRITE (10,1007) R(KKK+1), PNL(1)
      END DO

      END