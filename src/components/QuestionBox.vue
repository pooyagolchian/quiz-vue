<template>
    <div class="pt-5">
        <b-jumbotron class="text-center">            
            <template slot="lead">
                    {{currentQuestion.question}} 
            </template>

            <hr class="my-4">
            <p>
                List of answer!
            </p>

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
        }
    }
</script>




