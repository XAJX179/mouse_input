# frozen_string_literal: true

describe MouseInput do
  describe ".read" do
    context "when called" do
      it "gets the x y coords from sequence" do
        sequence = "\e[<0;3;2M\e[<0;3;2m"
        allow($stdin).to receive_messages(getc: "\e", read: sequence[1..], ready?: false)
        expect(MouseInput.read).to eq([3, 2])
      end
    end
  end
end
