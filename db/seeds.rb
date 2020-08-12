
['daniel', 'andrea', 'leon', 'andres', 'natalia', 'camilo', 'rusbel', 'johan'].each do |name|

    User.create email: "#{name}@platzi.com", password: '123456'
    
    end
    
    puts 'Users has been created'
    
      
    
    ['desarrollo', 'mercadeo', 'conceptualización', 'ejercicios'].each do |name|
    
    Category.create name: name, description: '--'
    
    end
    
    puts 'Categories has been created'
    
      
    
    owner = User.find_by(email: 'johan@platzi.com')
    
    [
    
    ['conceptualización', 'Bienvenida ', ['daniel:1', 'leon:2', 'andrea:random']],
    
    ['conceptualización', '¿Qué es ruby on rails y por qué usarlo?', ['daniel:1', 'leon:2', 'andrea:random']],
    
    ['conceptualización', 'Entorno de desarrollo de RoR', ['daniel:1', 'leon:2', 'andrea:random']],
    
    ['ejercicios', 'Instalación de Ruby, RoR en windows y Linux', ['daniel:1', 'leon:2', 'andrea:random']],
    
    ['conceptualización', 'Entender la web con rieles', ['daniel:1', 'leon:2', 'andrea:random']],
    
    ['ejercicios', 'Crear una nueva aplicación RoR ¡Hola Rails!', ['daniel:1', 'leon:2', 'andrea:random']],
    
    ['ejercicios', 'Manipular el patrón MVC', ['daniel:1', 'leon:2', 'andrea:random']],
    
    ['conceptualización', '¿Qué vamos a desarrollar?', ['daniel:1', 'leon:2', 'andrea:random']],
    
    ['desarrollo', 'Crear la base de nuestra aplicación', ['daniel:1', 'leon:2', 'andrea:random']],
    
    ['desarrollo', 'Los secretos de rails', ['daniel:1', 'leon:2', 'andrea:random']],
    
    ['conceptualización', 'Assets y Layouts', ['daniel:1', 'leon:2', 'andrea:random']],
    
    ['conceptualización', 'Diseñar el modelo de datos', ['daniel:1', 'leon:2', 'andrea:random']],
    
    ['desarrollo', 'Agregar primer conjunto de scaffolds', ['daniel:1', 'leon:2', 'andrea:random']],
    
    ['desarrollo', 'Cómo entender las migraciones', ['daniel:1', 'leon:2', 'andrea:random']],
    
    ['desarrollo', 'Esteroides para tu desarrollo - HAML', ['daniel:1', 'leon:2', 'andrea:random']],
    
    ['desarrollo', 'Esteroides para tu desarrollo - Simple Form', ['daniel:1', 'leon:2', 'andrea:random']],
    
    ['desarrollo', 'Regenerando el primer conjunto de scaffolds', ['daniel:1', 'leon:2', 'andrea:random']],
    
    ['desarrollo', 'Internacionalización de tu aplicación', ['daniel:1', 'leon:2', 'andrea:random']],
    
    ['conceptualización', 'Esteroides para tu desarrollo - Debugging', ['daniel:1', 'leon:2', 'andrea:random']],
    
    ['desarrollo', 'Agregar validaciones de modelo', ['daniel:1', 'leon:2', 'andrea:random']],
    
    ['desarrollo', 'Añadiendo el concepto de usuario', ['daniel:1', 'leon:2', 'andrea:random']],
    
    ['desarrollo', 'Añadir participantes a la tarea', ['daniel:1', 'leon:2', 'andrea:random']],
    
    ['desarrollo', 'CanCanCan ¿puedes hacerlo?', ['daniel:1', 'leon:2', 'andrea:random']],
    
    ['desarrollo', 'Callbacks en Rails', ['daniel:1', 'leon:2', 'andrea:random']],
    
    ['desarrollo', 'Enviar email a los participantes', ['daniel:1', 'leon:2', 'andrea:random']],
    
    ['desarrollo', 'Añadir comentarios vía AJAX', ['daniel:1', 'leon:2', 'andrea:random']],
    
    ['desarrollo', 'Embellecer nuestra aplicación', ['daniel:1', 'leon:2', 'andrea:random']],
    
    ['conceptualización', 'Desplegando a Heroku', ['daniel:1', 'leon:2', 'andrea:random']],
    
    ['conceptualización', 'Conclusiones del curso', ['daniel:1', 'leon:2', 'andrea:random']],
    
    ].each do |category, description, participant_set|
    
    participants = participant_set.map do |participant|
    
    user_name, raw_role = participant.split(':')
    
    role = raw_role == 'random' ? [1, 2].sample : raw_role
    
    Participant.new(
    
    user: User.find_by(email: "#{user_name}@platzi.com"),
    
    role: role.to_i
    
    )
    
    end
    
    Task.create!(
    
    category: Category.find_by(name: category),
    
    name: "Tarea ##{Task.count + 1}",
    
    description: description,
    
    due_date: Date.today + 15.days,
    
    owner: owner,
    
    participating_users: participants
    
    )
    
    end
    
    puts 'Tasks has been created'
    