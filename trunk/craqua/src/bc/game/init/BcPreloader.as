package bc.game.init 
{
	import bc.core.device.BcAssetCallback;
	import bc.core.device.BcDevice;
	import bc.core.device.BcEntryPoint;
	import bc.game.BcGamePreloader;
	import bc.game.asset.BcPreloaderAsset;

	/**
	 * @author Elias Ku
	 */
	
	public class BcPreloader extends BcEntryPoint implements BcAssetCallback
	{
		public function BcPreloader()
		{
			super();
			
			BcDevice.initialize(stage);
			
			if(BcDevice.impl)
			{
				new BcPreloaderAsset(this);
			}
		}
		
		private function initialize():void
		{
			new BcGamePreloader(this);
		}

		public function assetLoadingCompleted() : void
		{
			initialize();
		}		
	}
}
