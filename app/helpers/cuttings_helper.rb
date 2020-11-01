module CuttingsHelper
    # calculate the weight of completed boxes
    def weight_of_cut_boxes(number_of_boxes, packing_weight)
        return number_of_boxes * packing_weight
    end
end
