//Задание 1
  Vue.createApp({
    data() {
      return {
        title: 'Hello My Friend',
        text: 'Новость',
        placeholderString:'Суть новости',
        inputValue:'',
        notes: ['news1'],
        checkedNames: [],
        picked: ''
      }
    },
    methods:{
      inputChangeHandler(event){
        this.inputValue = event.target.value
      },
      addNewNews(){
        this.notes.push(this.inputValue)
        this.inputValue = ''
      },
      remove(idx){
        this.notes.splice(idx, 1)
      }
    }
  }).mount('#app');
