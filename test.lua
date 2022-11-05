
function extract(str,startlabel,endlabel)
    local sl = startlabel
    local el = endlabel
    local o,sp = string.find(str,sl)
    local ep,o = string.find(str,el)
    
    if sp ~= nil and ep ~= nil then
        
        local sp = sp+1
        local ep = ep-1
        local f = string.sub(str,sp,ep)
        return f

    else
        return ""
    end
end
local st = "<title>摩迪斯特·雷德</title><lore>雷德 惩戒之潮</lore><size>(57*82)</size><pic>N<57>FFFFFFON<1>5A5A63<57>FFFFFFON<1>5A5A63<57>FFFFFFON<1>5A5A63<57>FFFFFFON<1>5C5C66<26>FFFFFF<2>D08655<3>F8BBA1<26>F7F6F3ON<1>5C5C66<24>FFFFFF<9>E8A782<24>F4F1EDON<1>5C5C66<23>FFFFFF<1>F3C5A7<2>E8884A<3>D3DDD3<5>EDB184<23>F1E7DAON<1>5C5C66<22>FFFFFF<1>F6C3AB<3>D88460<3>E1C18E<3>CD7C3B<4>DF917B<21>FEFFFFON<1>5C5C66<21>FFFFFF<1>F2CFBF<3>D99C7E<6>A74F23<3>DB8561<3>A6A4A6<20>FFFEFEON<1>5C5C66<8>FFFFFF<2>DCC1A7<4>FFFEE8<2>D2AE96<7>F5EEE1<2>FCB79D<2>A74E3F<2>693019<4>B85B50<4>C7B28F<7>FEF7F3<4>EEC4B1<4>FEFAF0<1>D5BAAA<2>756051<2>C6BBBBON<1>47444B<8>FFFFFF<17>EEDCC1<7>ED8E7D<2>86422F<2>B6AD97<1>8E5F36<9>EDE0D7<2>E0AE98<2>FEFCF5<5>A58A82<2>CFC5C2ON<1>4B4850<7>FFFFFF<12>EFD7B3<2>FDFBF5<5>F4D5B1<6>DE9686<5>92473E<1>CEBDB0<6>FEF9F2<9>F3BDA4<2>7A6556<2>D7CECCON<1>49464D<25>E7D5C5<9>DA9D87<1>7A372F<2>BF6A64<1>D4C2B1<6>FEFAF3<4>EFB7A2<5>FDFBF8<2>7C6756<1>B0A3A3<1>786B63ON<1>231F1E<19>E7D8C2<18>E49686<16>F3DACA<3>7E6758<1>A3969CON<1>1F1B1C<11>FEBD95<3>FEFEFA<4>E0CAB5<9>E98785<2>F3D4A6<8>DE9282<13>F1D6C6<4>967F73<3>574A3BON<1>0E0A0B<6>FEB992<3>FE7854<13>E7B493<1>AD6463<1>52100A<1>95533B<13>EEBE9F<9>FFFEFE<4>E3CABF<3>A1877C<2>3B2C29<1>91867DON<1>49454B<5>FCD57B<11>FD815A<6>E7C1A1<1>9A6865<3>472414<11>CC8C76<1>EDCABB<10>FEFFFE<9>A79082ON<1>484549<10>FDBA7C<6>FD704C<8>E2BA9C<1>9C4F2A<1>C18F6A<12>F9CDB1<9>FEFFFE<1>D5BCB5<4>9C8472<1>DCC3AF<3>8B6F5D<1>BFB5ABON<1>464246<5>FEA87E<9>FDA041<2>F16346<2>F8E8DA<12>F1A196<4>774A2E<6>E6A791<8>FDF8F4<6>BDA593<1>715B4C<2>AFA092ON<1>433F42<4>FBB973<12>FB7651<2>E3C0AC<5>E5817A<7>FAC2A0<9>C68256<5>EBCEBE<3>FFFFFF<6>CCB8AD<2>957562<2>BDB2A8ON<1>444043<1>FED962<22>FE966B<12>FECFB0<3>E4877E<15>F8D9CB<2>997966<2>C1B7AFON<1>444144<7>FEA866<9>F76749<23>E7B3A1<8>FEFEFE<7>C6B29F<1>867364<2>BDB4ABON<1>423F40<1>FEDA50<10>F98E59<5>F14E39<2>F2CCB6<6>ED8E7F<3>FEDBBA<2>F38E7B<3>FDD7B6<6>E89687<13>F3DCCD<6>AB998AON<1>372F2E<4>FAB152<1>EB6741<5>FAA72D<6>E96542<2>FBEDDC<10>F49D8E<5>FDDABA<5>F2968A<12>F3E4DB<7>AB9A8EON<1>403B3B<16>F07657<13>E5B29E<4>FEFEFA<5>FAAF9F<9>F9EDE2<1>AF9D84<5>E3D7C7<4>AE886FON<1>3F3A3A<16>EB7E4B<1>A2705C<5>E87F76<3>F3DCB9<3>EC9F80<5>FDFCFB<6>F3C2B7<4>FDFCF8<1>C7B099<9>F2EBDA<4>B38C73ON<1>3E3939<6>D85F46<2>FCD8AD<2>ED9747<8>D25441<2>7E3F2D<9>FAAE9E<5>F6F2EE<4>ECA397<8>F8F0EB<2>AC9E88<4>F4ECE3<2>D4C3A6<1>866E5D<2>BEB4A6ON<1>3E3938<5>DE793C<4>F5CE9D<7>D76E3F<2>F99088<2>B14D45<10>F3A496<2>A37457<1>DAC7B6<1>F5EDF5<3>DB9896<5>FBF3F2<2>D3C6B2<3>9A775C<6>DDD3BF<4>BD977CON<1>3C3735<4>CA5D39<5>E7BA94<6>D77456<2>FCB8AC<1>D26E6D<2>804234<6>E39184<4>FDD1AF<1>BB977E<2>644C43<2>B54757<3>EE9994<1>EFDED9<6>D1AB95<2>8F6D55<7>D9CDB9<1>846B5A<2>C0B8A8ON<1>3C3735<3>B94A3B<1>E4A661<2>F9D9B1<1>F09B66<2>FBD4AE<5>DC7F57<3>F1C3B1<5>9C5D53<2>DCBCA4<1>9C826A<7>D7BEA9<2>947258<4>E89892<1>ECDBD6<6>C9A38C<2>8A6A51<7>D2C7B2<3>846857ON<1>37302E<4>BA5444<3>F2AC88<2>FDEAC6<6>C76351<2>EDB09C<4>6C3D32<1>DC988D<3>8F685A<1>CBB7AB<4>A9665D<1>E2CDB9<2>967D69<4>D8977C<2>F7D7CE<7>C09B82<1>7E614B<4>CABEA7<5>8C7A68<1>C1B8AAON<1>454244<4>B1513A<3>E8A580<2>FEEDC8<2>D3967A<4>B35046<2>EEC094<5>764B3E<1>CB9B81<2>7E5B49<2>D3C4A7<4>EDB85E<2>705746<4>E6AD96<2>F5E0DA<7>B7927B<1>795D48<7>C5BBA5<1>7F6553<2>BCB1A2ON<1>423F3E<4>AE5946<4>FADDB6<3>D89380<6>B5544A<6>734A3A<1>C3A181<1>7E604A<2>D8C5A8<4>E8BC69<3>9E8475<3>E59B91<2>F8EFEC<9>AD8971<3>E6E4DB<6>A2927EON<1>403D3C<4>A0413A<4>FEEBC5<4>C99685<4>B4564E<7>5E3629<2>BE966B<2>E8D4B6<6>C56253<2>886043<2>E9988C<2>FEFEFF<4>A2806A<2>F8EFE2<2>836D5C<7>BCB29E<1>7B614F<2>B3AA99ON<1>403D3C<4>A0413B<5>F4D8B3<1>D09990<4>B3574E<1>E9A87D<1>AB7862<8>6C4337<1>D4AE81<1>F6DCCB<3>E58680<3>A55145<1>C08E61<4>73543E<3>E7E1D9<4>AD9589<3>735645<1>B4AC98<3>DFDCD6<6>9E917EON<1>3F3C3B<1>BFAFA1<2>75655A<2>B5817B<5>FDE1BA<6>BA695F<9>7D5541<1>E7BBB0<6>D76C69<5>8C5B47<1>A29587<1>DBCFCE<7>A28871<1>614C3B<1>AFA795<3>DCD9D4<6>9C8E7EON<1>3E3B3B<8>C4B2A5<3>FCF5DB<1>D1A199<3>B55D52<4>C2ACA6<6>785F56<2>E7D1BE<6>C46662<5>73533C<6>A68C81<3>634C3E<1>A9A18E<3>D9D7D2<6>998C7DON<1>26211F<2>BCB09F<1>60564C<1>9E9A81<14>FBF2D9<10>C1ACA4<3>B85654<2>CB9781<4>876653<2>45281D<9>917A69<2>D6D4D0<4>908988<1>67503F<2>A7A08EON<1>2F2927<4>7E7F7F<18>C3C5B7<6>533C33<1>BB4E48<3>78392C<4>B18872<3>DDD6D0<9>897464<5>D4D2CE<4>876458ON<1>2D2725<5>7D807F<15>D9D5C6<8>5F443B<1>B7443D<2>6D3224<1>D25650<2>703F30<1>C89B7C<4>F9EAD9<4>846F61<7>FDE0AE<3>BBBAB6<4>7C5D54ON<1>2D2625<6>7A7D7D<14>D4CCBD<8>71534A<1>AF3C37<2>682B23<1>D55447<2>7B3E30<1>D4A376<4>FBEFE1<3>7F6B5E<10>E6D1AA<1>A59992<4>755751ON<1>2C2524<5>696D6D<3>AFB0B5<12>F0D8C3<14>6E4D45<1>C29472<17>F1D2B3<1>A69A95<4>72554FON<1>2B2524<4>64696A<5>A2A4A5<11>EACFBA<14>69463C<1>A87A5E<11>EFCAAF<2>B1937B<5>CBC9C9<1>866657<2>47322D<1>8A7F74ON<1>2A2424<4>656768<7>A9A9AA<9>E7D0BE<15>7D5348<4>DDAC98<6>FDEBCA<1>D0A884<1>483C35<1>858173<5>C8C7C6<4>75584DON<1>2A2424<4>666668<10>AFABAB<6>ECD4C1<7>805147<3>DD9C49<6>985F32<8>E1AD98<3>5A4439<1>898379<5>C7C4C4<4>816259ON<1>2B2525<10>8F949E<10>CEC2BB<16>7F493E<1>C69178<6>FCD0B8<1>B1A6A4<4>544542<5>C4C2C3<1>9F8878ON<4>564135<16>9DA0AA<3>EBC5B5<6>86554D<10>452A24<2>AD784F<6>FEE0C4<1>A19798<4>514440<3>C0BFC0<6>80726BON<1>3B3737<19>A9A5A9<8>855548<9>462926<1>A96E5F<2>DEAE95<2>FCEBCD<5>836A60<1>423B39<1>7C7870<5>BDBBBE<1>9B8579<1>503D35<2>8A7F73ON<1>3A3637<19>D0BCB1<4>CB8B70<15>7C4F43<1>BE958E<4>735E58<1>A2999A<2>4E4240<1>928A84<4>C7C2C3<3>908682<2>4A3933<1>9D9389ON<1>393537<18>CFBAAF<8>B0776C<12>603E3B<1>A2685B<2>DAC5B7<3>8F817E<4>4E4340<3>B9B9BF<3>8A817D<2>443430<1>9D9288ON<1>393536<5>CFB8AC<6>8B7475<9>CBB2AC<9>985C49<10>4C2C2A<4>986856<1>A09696<4>4F4240<3>BDBBC3<3>897F7C<2>3E2F2C<1>9B9287ON<1>383536<20>D0B4A9<5>B8755C<16>7B5C56<4>ECBAA1<3>62544F<3>C4BFC8<3>8A817E<2>392C28<1>998F84ON<1>373434<20>CCAFA5<3>B97050<20>7C5443<7>E7B8A0<3>9E9DA2<3>574746<1>948B81ON<3>373334<4>AF8C7F<1>714C3D<9>B59082<2>634C46<5>BB7546<27>7D563D<1>E1BEA5<2>A48E85ON<20>53423F<3>967F7B<4>E9AD81<10>8F725C<7>4E3B38<10>897077<4>C69C6F<4>654C3BON<15>241D1E<4>886B59<3>DB9269<1>83CED0<3>7A8175<1>B79E82<5>FAE8CE<2>A08277<11>513F3B<4>967970<2>DCA77B<6>6A432F<1>80736EON<10>201A1A<6>5D372F<3>8E7876<2>E3A26F<5>9B6641<1>D8B798<6>FBF4D8<2>BD9C8C<11>614C46<3>B58261<9>734C3BON<10>1E1919<6>5B332C<3>AB948C<3>EEA168<3>926040<2>C29B81<7>F6E0C4<2>C5A392<10>6F584E<2>B78263<7>6E4B3E<2>2F2320<1>817571ON<1>1F1919<4>94352C<10>512B23<10>8D6D5A<3>DCB29B<6>FEF6DF<2>E2B9A5<3>9B7F76<5>4B3B3D<2>A68273ON<13>563E3B<14>9F312C<1>E3B4A6<2>846E6C<3>FBC49C<4>AC755D<12>E5BAA3<3>91766D<4>4C3C3D<2>AA7C64<8>312933<1>816A59<2>352927<1>776B6AON<1>1F1B1C<4>9F312C<11>B16F60<1>73403A<1>BCA887<4>FECAA2<7>BE8A75<1>E8CCBD<15>7A6057<8>2D252E<2>836C5A<2>352B28<1>6F6465ON<1>211C1D<6>9F322C<6>BC796F<4>B23B34<11>D5C09C<16>886959<9>403031<2>A99481ON<4>362C29<10>A0312B<6>C0735F<5>ECD8AE<5>C08E78<8>795C4C<5>C28E60<2>5D443D<1>AD7B5B<9>4E3835<3>7B7574ON<4>372C2B<15>992D29<1>9F7056<4>FDECC1<4>D79C82<6>8E6B5A<7>D49B63<5>8C583A<9>3A2B2F<3>8A8587ON<6>372D2C<13>983630<1>B3866C<4>FEF2C6<13>D49C83<11>76452E<8>342933<2>8E786BON<6>382D2C<13>963530<1>C6987C<4>FDEDC6<7>C8927A<23>5E3E2B<3>8B8590ON<7>5B4C4A<13>A2342D<1>D3A58A<4>FDE7C2<6>B5846B<13>472D21<1>946148<1>D29688<7>704742<6>908183ON<4>392F2F<15>A4312A<3>DFAD92<1>FDECC9<5>D5A78D<6>805540<2>35211B<1>815842<8>EDB296<7>794A43<3>B1A9B4<4>6F6468ON<3>362B29<15>A13029<8>E8B295<5>744B32<2>C28F72<1>5D3E28<10>CA987D<7>814C42<3>BAB7C4<4>706569ON<9>362D2A<8>794538<4>D38F81<3>F7D2B2<1>D99A6C<5>6D4430<5>C29072<5>77533E<4>F8BB9C<7>7F463C<3>BCB7C5<4>73676BON<9>362C2A<2>814A39<2>C79579<3>90553A<1>DFBEA8<1>A88062<6>EEAD8F<5>774B35<2>C49074<2>FBCEAE<2>6D4E3C<2>B89C8D<4>694238<3>DB9A78<2>7A4039<1>B19B9A<4>7E5E5D<3>BAB9C4<3>776A70ON<9>3D3332<2>844E33<3>E8CE9E<3>C78C63<1>F0D6BA<6>E6A06A<5>6D4532<2>D29A77<2>FED6B5<3>B9A692<6>6C5349<1>B88163<2>F5B38D<2>7B4139<1>C3BBBA<4>7E6862<3>BDB9C5<3>7B6F74ON<9>3C3233<2>A37256<4>F0DEA8<2>C78A5C<1>FBEFCB<3>F0CB87<7>603A2C<4>F7BA97<3>A78C77<2>50382A<1>A79280<5>70554D<1>F1B28F<3>90705E<1>BFB7B7<2>75645C<5>CEC5B4<3>7F7175ON<9>3D3232<3>B7896C<2>FEFCD0<2>F8C88B<4>D18A55<8>7E5041<5>D7B18B<14>846857<1>BEB6B5<4>75645E<3>CBC6CC<3>796871ON<9>3B3030<3>B08159<4>EEA563<2>EFDEAF<1>BE9682<4>905949<3>512F22<3>92826E<4>FBE3C2<3>B4977F<11>604D44<1>BDB5B7<4>71625B<2>D5D0D1<3>9390A2ON<11>584A46<3>CD986B<1>EDD7A2<3>C99669<1>E9D6BD<3>A36B53<5>5C3729<1>878072<3>F5EBE1<5>AF8974<12>51392D<1>B6AAAF<4>6E5C59<2>E0DADA<3>A2A2B3ON<5>564A43<13>FFFEFE<1>D3B5B1<3>99624D<7>E8E3DF<2>D0A584<3>7E5846<2>CEAD9C<9>785F54<17>E3E1DEON<1>5C5C66<26>FEFEFF<1>B1A1A4<2>6B4A3C<3>C6A693<8>5F493E<1>C3BFB8<16>FFFFFFON<1>5C5C66<27>FFFFFF<3>6E564C<2>CBAE9A<8>735D52<1>A69F96<16>FFFFFFON<1>5C5C66<27>FFFFFF<1>A3969A<2>4E342B<3>947965<7>543E33<1>8B8175<16>FEFFFEON<1>5C5C66<27>FFFFFF<1>BCB6C3<4>3C2620<1>C4AE9D<6>7B665F<2>3D2B29<16>FFFFFEON<1>5C5C66<28>FFFFFF<4>3C2B29<3>806B5A<6>432D25<16>EFEDECON<1>5C5C66<28>FFFFFF<13>504447<16>E1DFDCO<end></pic>"

local PIC = extract(st,"<pic>","</pic>")
function oneline(st)

    
    local value = extract(st,"N","O")

    local le = string.len(value)

    if value ~= "" then
        
    
    
        st = string.sub(st,le+3,string.len(st))
    end
    
    return value,st
end


function linedetail(li)
    local li_c = li.."<ED>"
    
    local counter = 0

    local STR = ""
    
    

    local colourcode = "FFFFFF"

    local i = 0

    while li_c ~= "<ED>" do

        
        local tims = extract(li_c,"<",">") --方块个数
        
        local time = tonumber(tims)
        
        counter = counter + string.len(tims) + 2
        li_c = string.sub(li_c,counter+1,string.len(li_c))

        counter = 0
        

        
        


        colourcode = string.sub(li_c,1,6)

        STR = STR .."{col:"..colourcode.."}"
        
        while time > 0 do

            time = time - 1
            STR = STR .. "█"
            
        end

        STR = STR.."{/col}"
        li_c = string.sub(li_c,7,string.len(li_c))

        i = i + 1
        

        





        
    end
end

local line_num = 0
local i = 0


while i<100 do
    

    i = i +1

    line_num = line_num + 1

    local lineinf,b = oneline(PIC)
    
    linedetail(lineinf)

    PIC = b

    --<56>FFFFFF
end
