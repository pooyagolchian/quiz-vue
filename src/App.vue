<template>
  <div class="container" id="app">
      <Header
       :numCorrect="numCorrect"
       :numTotal="numTotal"
      
       />

      <b-container class="bv-example-row">
        <b-row>
         <b-col class="m-auto"> 
              <QuestionBox
                v-if="questions.length"
               :currentQuestion="questions[index]"
               :next="next"
               :increment="increment"
               :questionLength="questions.length"
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

    },
    increment(isCorrect){
      if(isCorrect) {
        this.numCorrect ++
      }
      this.numTotal ++
    }
  },
  data() {
    return {
      questions: [],
      index: 0,
      numCorrect:0,
      numTotal: 0
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
        //console.log(this.questions.length)

      })
      

    
  },
}
</script>

<style>

</style>
