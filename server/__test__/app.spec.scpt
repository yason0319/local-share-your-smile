JsOsaDAS1.001.00bplist00�Vscripto" ' u s e   s t r i c t ' 
 c o n s t   a p p   =   r e q u i r e ( ' . . / a p p ' ) 
 c o n s t   r e q u e s t   =   r e q u i r e ( ' s u p e r t e s t ' ) 
 
 / /  0�0�0�0�0�0�0�0�c[�0Y0�0n0g0o0j0O00�0h0n0�0�0�0�0�c[�0Y0�0 
 / /  0�0�0�0�0�0�0�0h0n}N�0Q0o j e s t0L0�0c0f0O0�0�0 
 j e s t . m o c k ( ' . . / c o m p o n e n t s / c u s D r o p b o x ' ) 
 j e s t . m o c k ( ' f s ' ) 
 
 d e s c r i b e ( ' i m a g e   a p i ' ,   ( )   = >   { 
     v a r   s t a t e   =   ' ' 
 
     c o n s t   a g e n t   =   r e q u e s t . a g e n t ( a p p ) 
 
     c o n s t   M O C K _ F I L E _ I N F O   =   { 
         ' / p a t h / t o / f i l e 1 . j s ' :   ' c o n s o l e . l o g ( " f i l e 1   c o n t e n t s " ) ; ' , 
         ' / p a t h / t o / f i l e 2 . t x t ' :   ' f i l e 2   c o n t e n t s ' , 
     } ; 
 
     b e f o r e E a c h ( ( )   = >   { 
         / /   S e t   u p   s o m e   m o c k e d   o u t   f i l e   i n f o   b e f o r e   e a c h   t e s t 
         r e q u i r e ( ' f s ' ) . _ _ s e t M o c k F i l e s ( M O C K _ F I L E _ I N F O ) ; 
     } ) ; 
 
     i t ( ' r e d i r e c t   t o   d r o p b o x   f o r   O A u t h   b e f o r e   s t a r t   s e r v e r ' ,   a s y n c   f u n c t i o n ( d o n e )   { 
         / /   c o n s o l e . l o g ( d b x . g e t A c c e s s T o k e n F r o m C o d e ) 
         c o n s t   r e s p o n s e   =   a w a i t   a g e n t . g e t ( ' / ' ) 
         / /   c o n s o l e . l o g ( r e s p o n s e . h e a d e r ) 
         s t a t e   =   r e s p o n s e . t e x t . s p l i t ( ' s t a t e = ' ) [ 1 ] 
         c o n s o l e . l o g ( s t a t e ) 
         e x p e c t ( r e s p o n s e . s t a t u s C o d e ) . t o B e ( 3 0 2 ) 
         d o n e ( ) 
     } ) ; 
 
     i t ( ' s e t   A c c e s s T o k e n   t h r o u g h t   d r o p b o x ' ,   a s y n c   f u n c t i o n ( d o n e )   { 
         / /   j e s t . s p y O n ( d b x ,   ' g e t A c c e s s T o k e n F r o m C o d e ' ) 
         v a r   u r i   =   ' / a u t h ? s t a t e = '   +   s t a t e   +   ' & c o d e = s a m p l e ' 
         c o n s o l e . l o g ( u r i ) 
         c o n s t   r e s p o n s e   =   a w a i t   a g e n t . g e t ( u r i ) 
         / /   c o n s o l e . l o g ( r e s p o n s e . h e a d e r s ) 
         e x p e c t ( r e s p o n s e . s t a t u s C o d e ) . t o B e ( 3 0 2 ) 
         d o n e ( ) 
     } ) 
 
     i t ( ' s t a r t   s e r v e r ' ,   a s y n c   f u n c t i o n ( d o n e )   { 
         c o n s t   r e s p o n s e   =   a w a i t   a g e n t . g e t ( ' / ' ) 
         e x p e c t ( r e s p o n s e . s t a t u s C o d e ) . t o B e ( 3 0 2 ) 
         d o n e ( ) 
     } ) 
 
     i t ( ' t e s t   p o s t ' ,   a s y n c   ( )   = >   { 
         c o n s t   r e s p o n s e   =   a w a i t   r e q u e s t ( a p p ) . p o s t ( ' / i m a g e s / ' ) 
         e x p e c t ( r e s p o n s e . s t a t u s C o d e ) . t o B e ( 2 0 0 ) 
         e x p e c t ( r e s p o n s e . b o d y . r e p l y ) . t o B e ( ' h e l l o ' ) 
     } ) 
 
     / /   i t ( ' O A u t h   s t a r t   w i t h   t o k e n ' ,   ( )   = >   { 
     / /       v a r   r e q   =   r e q u e s t ( a p p ) . g e t ( ' / ' ) 
     / /       r e q . s e s s i o n . t o k e n   =   ' h o g e h o g e ' 
     / /       r e q . e x p e c t ( ' C o n t e n t - T y p e ' ,   / j s o n / ) 
     / /           . e x p e c t ( 2 0 0 ) 
     / /           . e n d ( f u n c t i o n   ( e r r ,   r e s )   { 
     / /               e x p e c t ( r e s . s t a t u s C o d e ) . t o B e ( 3 0 2 ) 
     / /       } ) 
     / /   } ) 
 } )                              Zjscr  ��ޭ