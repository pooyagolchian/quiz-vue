<template>
    <div class="pt-5">
        <b-jumbotron class="text-center">            
            <template slot="lead">
                    {{currentQuestion.question}} 
            </template>

            <hr class="my-4">
            

            <b-list-group class="pb-3">
            <b-list-group-item 
            
            v-for="(answer, index) in answers" 
            :key="index"
            @click="selectAnswer(index)"
            :class="[selectedIndex === index ? 'selected' : '']"
            >{{answer}}
            </b-list-group-item>
            </b-list-group>


            <b-button class="mr-2" variant="primary" href="#">Submit</b-button>
            <b-button @click="next" variant="success" href="#">Next</b-button>
        </b-jumbotron>
    </div>
</template>
<script>
    export default {



        props: {
            currentQuestion: Object,
            next: Function,
        },


        data() {
            return {
                selectedIndex: null
            }
        },

      
        computed: {
            answers() {
                let answers = [...this.currentQuestion.incorrect_answers]
                //console.log(this.currentQuestion);        
                return answers
            }
        },


        methods: {
            selectAnswer(index) {
                this.selectedIndex = index
                // console.log(index)
            }
        },


        mounted() {
            console.log(this.currentQuestion);
            
        }
    }
</script>



<style lang="scss">
    
    .list-group-item {
        background-color: #eee;
        cursor: pointer;
    }
    .selected {
        background-color: lightblue;
    }

    .correct {
        background-color: green;
    }
    .incorrect {
        background-color: red;
    }


</style>



