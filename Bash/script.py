import argparse
import pickle as pkl

def order_66(p1, p2):
    s ="Good Anakin, GOOoooooD! You killed {}{}".format(p1,p2)
    return s


#Define the parser
parser = argparse.ArgumentParser()
parser.add_argument("-p1", "--parameter1", type=int, choices=[1,2,3],
                    help="Description parameter 1")
parser.add_argument("-p2", "--parameter2", type=float,
                    help="Description parameter 2")
parser.add_argument("-o", "--output_dir", type=str,
                    help="Output directory")

#The parser get the parameters from the command line and store them in args
args = parser.parse_args()

#Execute order 66
data = order_66(args.parameter1,args.parameter2)

#Save some data
filename = args.output_dir + "command_{}_{}".format(args.parameter1,
                                                   args.parameter2)
pickle_out = open(filename, 'wb')
pkl.dump(data, pickle_out)
pickle_out.close()

