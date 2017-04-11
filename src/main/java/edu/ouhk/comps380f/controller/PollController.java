/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.ouhk.comps380f.controller;

import java.io.IOException;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.View;
import org.springframework.web.servlet.view.RedirectView;

@Controller
@RequestMapping("poll")
public class PollController {

    public static class Form {

        private String title;
        private String optionA;
        private String optionB;
        private String optionC;
        private String optionD;

        public String getTitle() {
            return title;
        }

        public void setTitle(String title) {
            this.title = title;
        }

        public String getOptionA() {
            return optionA;
        }

        public void setOptionA(String optionA) {
            this.optionA = optionA;
        }

        public String getOptionB() {
            return optionB;
        }

        public void setOptionB(String optionB) {
            this.optionB = optionB;
        }

        public String getOptionC() {
            return optionC;
        }

        public void setOptionC(String optionC) {
            this.optionC = optionC;
        }

        public String getOptionD() {
            return optionD;
        }

        public void setOptionD(String optionD) {
            this.optionD = optionD;
        }

    }

    @RequestMapping(value = "newPoll", method = RequestMethod.GET)
    public ModelAndView newPoll() {
        return new ModelAndView("newPoll", "Poll", new Form());
    }

    @RequestMapping(value = "newPoll", method = RequestMethod.POST)
    public View Poll(TicketUserController.Form form) throws IOException {

        return new RedirectView("/user/list", true);
    }
}
