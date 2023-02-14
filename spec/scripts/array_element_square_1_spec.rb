describe "element_square.rb" do
  it "should output '4.0' given the input '9 2 7'" , points: 1 do
    
    allow_any_instance_of(Object).to receive(:gets).and_return("9 2 7\n")

    # expect { require_relative '../../element_square' }.to output(/"?Enter at least 2 numbers, separated by spaces:"?\n4.0\n/).to_stdout
    output = with_captured_stdout { require_relative('../../element_square')} 
    output = "empty" if output.empty? 
    expect(output.match?(/"?Enter at least 2 numbers, separated by spaces:"?\n4.0\n/i)).to be(true),
      "Expected output to be 'Enter at least 2 numbers, separated by spaces:\"\\n4.0\n', but was #{output}."
  end
end

def with_captured_stdout
  original_stdout = $stdout  # capture previous value of $stdout
  $stdout = StringIO.new     # assign a string buffer to $stdout
  yield                      # perform the body of the user code
  $stdout.string             # return the contents of the string buffer
ensure
  $stdout = original_stdout  # restore $stdout to its previous value
end
