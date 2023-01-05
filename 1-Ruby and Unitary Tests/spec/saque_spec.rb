require_relative '../app/bank'
    
    
    
describe ContaCorrente do
    
    describe 'saque' do

        context 'quando o valor é positivo' do
            before(:all) do
                @cc = ContaCorrente.new(1000.00)
                @cc.saca(200.00)
            end

            it ' então atualiza saldo' do
                expect(@conta.saldo).to eql 800.00


            end
            context 'quando o saldo é zero' do
                before(:all) do
                    @cc = ContaCorrente.new(0.00)
                    @cc.saca(200.00)
                end

                it 'vejo mensagem' do
                    expect(@cc.mensagem).to eql 'Saldo insuficiente para saque :('
                end

                it 'meu saldo permanece em zeros' do
                    expect(@cc.saldo).to eql 0.00
                end
            end

        end

    end

        context 'quando o saldo é insufiicente' do
                    before(:all) do
                        @cc = ContaCorrente.new(100.00)
                        @cc.saca(101.00)
                    end

                    it 'vejo mensagem' do
                        expect(@cc.mensagem).to eql 'Saldo insuficiente para saque :('
                    end

                    it 'meu saldo permanece em zeros' do
                        expect(@cc.saldo).to eql 100.00
                    end
                
            end
            context 'quando o limite é ultrapassado' do

                before(:all) do
                    @cc = ContaCorrente.new(1000.00)
                    @cc.saca(701.00)
                end
                it 'vejo mensagem' do
                    expect(@cc.mensagem).to eql 'Limite máximo por saque é de R$ 700'
                end

                it 'meu saldo permanece com o valor inicial' do
                    expect(@cc.saldo).to eql 1000.00
                end
            end
         end 
        
    

end



