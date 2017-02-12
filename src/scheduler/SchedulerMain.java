package scheduler;

import java.util.*;

public class SchedulerMain{

	/*
	 * Time Table scheduling is an np-hard problem which can best be solved  
	 * using Genetic Algorithms (of Artificial Intelligence).
	 * Conceps used here are Permutation encoding, elitism, roulette wheel selection,
	 * single pt crossover,swap mutation
	 */
	
	List<Chromosome> firstlist;
	List<Chromosome> newlist;
	double firstlistfitness;
	double newlistfitness;
	int populationsize=1000;
	int maxgenerations=100;
	
	public static Chromosome finalson;
	
	public SchedulerMain() {
		
		//printing input data (on console for testing)
		Utility.printInputData();
		
		//generating slots
		new TimeTable();
		
		//printing slots (testing purpose only)
		Utility.printSlots();
		
		//initialising first generation of chromosomes and puting in first arraylist
		initialisePopulation();
		
		//generating newer generation of chromosomes using crossovers and mutation
		createNewGenerations();
		
	}
	
	
	//Creating new Generations using crossovers and mutations
	public void createNewGenerations(){
		
		Chromosome father=null;
		Chromosome mother=null;
		Chromosome son=null;
		
		int nogenerations=0;
		
		//looping max no of generations times or until suitable chromosome found
		while(nogenerations<maxgenerations){	
			
			newlist=new ArrayList<Chromosome>();
			newlistfitness=0;
			int i=0;
			
			//first 1/10 chromosomes added as it is- Elitism 
			for(i=0;i<populationsize/10;i++){	
				newlist.add(firstlist.get(i).deepClone());		
				newlistfitness+=firstlist.get(i).getFitness();
			}
			
			//adding other members after performing crossover and mutation
			while(i<populationsize){
				
				father=selectParentRoulette();
				mother=selectParentRoulette();
		
				//crossover
				if(new Random().nextDouble()<inputdata.crossoverrate){
					son=crossover(father,mother);	
				}else
					son=father;
				
				//mutation
				customMutation(son);
				
				
				if(son.fitness==1){
					System.out.println("Selected Chromosome is:-");
					son.printChromosome();
					break;
				}
				
				newlist.add(son);
				newlistfitness+=son.getFitness();
				i++;
				
			}
			
			//if chromosome with fitness 1 found
			if(i<populationsize){
				
				System.out.println("****************************************************************************************");
				System.out.println("\n\nSuitable Timetable has been generated in the "+i+"th Chromosome of "+(nogenerations+2)+" generation with fitness 1.");
				System.out.println("\nGenerated Timetable is:");
				son.printTimeTable();
				finalson=son;
				break;
				
			}
			
			//if chromosome with required fitness not found in this generation
			firstlist=newlist;
			Collections.sort(newlist);Collections.sort(firstlist);
			System.out.println("**************************     Generation"+(nogenerations+2)+"     ********************************************\n");
			printGeneration(newlist);
			nogenerations++;

		}
	}
	
	//selecting using Roulette Wheel Selection only from the best 10% chromosomes
	public Chromosome selectParentRoulette(){
			
		firstlistfitness/=10;
		double randomdouble=new Random().nextDouble()*firstlistfitness;
		double currentsum=0;
		int i=0;

		while(currentsum<=randomdouble){
			currentsum+=firstlist.get(i++).getFitness();
		}
		return firstlist.get(--i).deepClone();

	}
		
		
	//custom mutation
	public void customMutation(Chromosome c){
				
		double newfitness=0,oldfitness=c.getFitness();
		int geneno=new Random().nextInt(inputdata.nostudentgroup);
				
		int i=0;
		while(newfitness<oldfitness){
					
			//c.printChromosome();
			//System.out.println("getf="+c.getFitness()+" fit= "+c.fitness);
					
			c.gene[geneno]=new Gene(geneno);
			newfitness=c.getFitness();
					
			//c.printChromosome();
			//System.out.println("getf="+c.getFitness()+" fit= "+c.fitness);			
			i++;
			if(i>=500000) break;
		}
				
	}	
		
	
	//Two point crossover
	public Chromosome crossover(Chromosome father,Chromosome mother){
			
		int randomint=new Random().nextInt(inputdata.nostudentgroup);
		Gene temp=father.gene[randomint].deepClone();
		father.gene[randomint]=mother.gene[randomint].deepClone();
		mother.gene[randomint]=temp;
		if(father.getFitness()>mother.getFitness())return father;
		else return mother;
		
	}
	
	//initialising first generation of population
	public void initialisePopulation(){
		
		//generating first generation of chromosomes and keeping them in an arraylist
		firstlist=new ArrayList<Chromosome>();
		firstlistfitness=0;
		
		for(int i=0;i<populationsize;i++){
		
			Chromosome c;
			firstlist.add(c=new Chromosome());
			firstlistfitness+=c.fitness;
			
		}
		Collections.sort(firstlist);
		System.out.println("----------Initial Generation-----------\n");
		printGeneration(firstlist);
		
	}
	
	
	//printing important details of a generation
	public void printGeneration(List<Chromosome> list){
		
		System.out.println("Fetching details from this generation...\n");	
		
		//to print only initial 4 chromosomes of sorted list
		for(int i=0;i<4;i++){
			System.out.println("Chromosome no."+i+": "+list.get(i).getFitness());
			list.get(i).printChromosome();
			System.out.println("");
		}
		
		System.out.println("Chromosome no. "+(populationsize/10+1)+" :"+list.get(populationsize/10+1).getFitness()+"\n");
		System.out.println("Chromosome no. "+(populationsize/5+1)+" :"+list.get(populationsize/5+1).getFitness()+"\n");
		System.out.println("Most fit chromosome from this generation has fitness = "+list.get(0).getFitness()+"\n");
		
	}
	
	
	//selecting from best chromosomes only(alternate to roulette wheel selection)
	public Chromosome selectParentBest(List<Chromosome> list){
		
		Random r=new Random();
		int randomint=r.nextInt(100);
		return list.get(randomint).deepClone();

	}
	
	
	//simple Mutation operation
	public void mutation(Chromosome c){
		int geneno=new Random().nextInt(inputdata.nostudentgroup);
		int temp=c.gene[geneno].slotno[0];
		for(int i=0;i<inputdata.daysperweek*inputdata.hoursperday-1;i++){
			c.gene[geneno].slotno[i]=c.gene[geneno].slotno[i+1];
		}
		c.gene[geneno].slotno[inputdata.daysperweek*inputdata.hoursperday-1]=temp;
	}
	
	
	//swap mutation
	public void swapMutation(Chromosome c){
		
		int geneno=new Random().nextInt(inputdata.nostudentgroup);
		int slotno1=new Random().nextInt(inputdata.hoursperday*inputdata.daysperweek);
		int slotno2=new Random().nextInt(inputdata.hoursperday*inputdata.daysperweek);
		
		int temp=c.gene[geneno].slotno[slotno1];
		c.gene[geneno].slotno[slotno1]=c.gene[geneno].slotno[slotno2];
		c.gene[geneno].slotno[slotno2]=temp;
	}
	
	
	
	
	public static void main(String[] args) {
		new SchedulerMain();
	}
}