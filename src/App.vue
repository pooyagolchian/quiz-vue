<template>
  <div class="container" id="app">
      <Header />

      <b-container class="bv-example-row">
        <b-row>
         <b-col class="m-auto "> 
              <QuestionBox
               :currentQuestion="questions[index]"
               :next="next"
              
              
               />
          </b-col>
        </b-row>
      </b-container>


      
  </div>
</template>

<script>
import Header from './components/Header'
import QuestionBox from './components/QuestionBox'


export default {

  name: 'app',
  components: {
    Header,
    QuestionBox,
  },
  methods: {
    next() {
      this.index++;

    }
  },
  data() {
    return {
      questions: [],
      index: 0,
    }
  },
  mounted: function() {
    const apiUrl = 'https://opentdb.com/api.php?amount=10&category=27&type=multiple';
    fetch(apiUrl, {
      method: 'get'
    })
    .then( (response) => { 
      return response.json()
      })
      .then((jsonData) => {
        this.questions  = jsonData.results;
      })

    
  },
}
</script>

<style>

</style>
