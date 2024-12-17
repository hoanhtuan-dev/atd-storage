#!/bin/bash 
    
    # Kiểm tra xem brightnessctl có được cài đặt chưa 
    if ! command -v brightnessctl &> /dev/null; then 
        echo "Cần cài đặt brightnessctl." 
        exit 1                                                                
    fi                                                                        

    # Hỏi người dùng mật khẩu root 
    echo "Nhập mật khẩu root:" 
    sudo -S brightnessctl get
    echo
    
    # Hỏi người dùng muốn tăng hay giảm độ sáng 
    echo "Bạn muốn tăng hay giảm độ sáng?" 
    read -p "(t) Tăng / (g) Giảm: " action 
                                                                              
    # Tăng hoặc giảm độ sáng 
    case "$action" in 
        t)                                                                    
            sudo brightnessctl s +10%                                              
            ;;                                                                
        g)                                                                    
            sudo brightnessctl s 10%-                                              
            ;;                                                                
        *)                                                                    
            echo "Lựa chọn không hợp lệ." 
            exit 1                                                            
            ;;                                                                
    esac                                                                      
                                                                              
    # In thông báo xác nhận 
    sudo -S brightnessctl



    
  
