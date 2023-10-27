#Creamos la clase principal Person
class Person
    attr_accessor :first_name, :last_name, :age
    
    def initialize(first, last, age)
      @first_name = first
      @last_name = last
      @age = age
    end
    
    def birthday
      @age += 1
    end
  
    def talk
      # Este método se sobrescribirá en las subclases
    end
  
    def introduce
      # Este método se sobrescribirá en las subclases
    end
  end

  #Creamos las subclases Student, Teacher y Parent
  class Student < Person
    def talk
      puts "Aquí es la clase de programación con Ruby?"
    end
    
    def introduce
      puts "Hola profesor. Mi nombre es #{@first_name} #{@last_name}."
    end
  end
  
  class Teacher < Person
    def talk
      puts "Bienvenidos a la clase de programación con Ruby!"
    end
    
    def introduce
      puts "Hola alumnos. Mi nombre es #{@first_name} #{@last_name}."
    end
  end
  
  class Parent < Person
    def talk
      puts "Aquí es la reunión de apoderados?"
    end
    
    def introduce
      puts "Hola. Soy uno de los apoderados. Mi nombre es #{@first_name} #{@last_name}."
    end
  end

  #Creamos instancias y probamos los métodos
  # Crear un estudiante
student = Student.new("Juan", "Pérez", 20)
student.talk
student.introduce

# Crear un profesor
teacher = Teacher.new("Carlos", "Gómez", 35)
teacher.talk
teacher.introduce

# Crear un apoderado
parent = Parent.new("María", "Rodríguez", 40)
parent.talk
parent.introduce
