Rails.application.routes.draw do
  root "welcome#home" #RaÃ­z, ejecuta la acciÃ³n home del controlador welcome
  resources :urls #Crea todas las rutas de nuestro recurso urls
  match 'bit.ly/:url', to: 'urls#url', via: 'get', as: 'real_url'
# Creamos una ruta personalizada
end