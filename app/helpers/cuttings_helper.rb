module CuttingsHelper
    # calculate the weight of completed boxes
    def weight_of_cut_boxes(number_of_boxes)
        weight_in_box = 15
        return number_of_boxes * weight_in_box
    end
end
