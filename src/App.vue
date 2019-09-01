<template>
  <div class="container" id="app">
      <Header />
      <QuestionBox />
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
  

  }
}
</script>

<style>

</style>
