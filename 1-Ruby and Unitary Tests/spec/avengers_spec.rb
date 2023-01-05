class AvengersHeadQuarter
    attr_accessor :list


    def initialize
      self.list = []
    end

def put(avenger)

    self.list.push(avenger)
    
end
 
    # TDD desenvolvimento guiado por testes
    describe AvengersHeadQuarter do

        it 'deve adicionar um vingador' do 
            hq =  AvengersHeadQuarter.new
            hq.put('spiderman')
            expect(hq.list).to eql ['spiderman']
        end

        it 'deve adicionar um vingador' do
            hq = AvengersHeadQuarter.new
            hq.put ('thor')
            hq.put ('hulk')
            hq.put ('ironman')

            res = hq.list.size > 0 
            expect(hq.list.size).to be > 0
            expect(res).to be true
        end

        it 'thor deve ser o primeiro da lista ' do
            hq = AvengersHeadQuarter.new
            hq.put ('thor')
            hq.put ('hulk')
            hq.put ('ironman')
            expect(hq.list).to start_with 'thor'
        end

        it 'ironman deve ser o ultimo da lista ' do
            hq = AvengersHeadQuarter.new
            hq.put ('thor')
            hq.put ('hulk')
            hq.put ('ironman')
            expect(hq.list).to end_with 'ironman'
        end

        it 'deve conter sobrenome ' do
            avenger = 'peter parker'
            expect(avenger).to match(/parker/)
            expect(avenger).to_not match(/papito/)
        end
    end

end