class Login < InterfaceFramework

  #@@btn_cpf = "cpf"
  @@btn_cpf = "//android.view.View[@text='Insira seu CPF para acessar.']"


  
  def validar_tela_login
    #find(@@btn_cpf).displayed?
    sleep(3)
    $driver.find_element(:xpath, @@btn_cpf).displayed?
  end
end
