class Document
  attr_accessor :content

  def initialize(content)
    @content = content
  end
end

class HPPrinter
  def my_hp_print(document)
    # do some printing code
    puts document.content
  end
end

class CannonPrinter
  def boom(document)
    puts document.content
  end
end

class SamsungPrinter
  def display_print(document)
    puts document.content
  end
end

class SendDocByEmail
  def send_email(document)
    puts "Sending email -- #{document.content}"
  end
end

class Adapter
  def print(document)
    raise "Not implemented"
  end
end

class HPPrinterAdapter < Adapter
  def initialize(printer)
    @printer = printer
  end

  def print(document)
    @printer.my_hp_print(document)
  end
end

class CannonPrinterAdapter < Adapter
  def initialize(printer)
    @printer = printer
  end

  def print(document)
    @printer.boom(document)
  end
end

class SamsungPrinterAdapter < Adapter
  def initialize(printer)
    @printer = printer
  end

  def print(document)
    @printer.display_print(document)
  end
end

class SendMailAdapter < Adapter
  def initialize(printer)
    @printer = printer
  end

  def print(document)
    @printer.send_email(document)
  end
end

class Techshelter
  def print_document(document, printer)
    printer.print(document)
  end
end

document = Document.new("Hello World")
printer = HPPrinter.new
# printer = CannonPrinter.new
# printer = SamsungPrinter.new
emailer = SendDocByEmail.new

Techshelter.new.print_document(document, HPPrinterAdapter.new(printer))
# Techshelter.new.print_document(document, CannonPrinterAdapter.new(printer))
Techshelter.new.print_document(document, SendMailAdapter.new(emailer))