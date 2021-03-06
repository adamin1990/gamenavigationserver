import java.util.*;

public class CacheMgr {
	private static Map cacheMap = new HashMap();
	private static Map cacheConfMap = new HashMap();

	private CacheMgr() {

	}

	private static CacheMgr cm = null;

	public static CacheMgr getInstance() {
		if (cm == null) {
			cm = new CacheMgr();
			Thread t = new ClearCache();
			t.start();
		}
		return cm;
	}

	/**
	 * 增加缓存
	 * 
	 * @param key
	 * @param value
	 * @param ccm
	 *            缓存对象
	 * @return
	 */
	public boolean addCache(Object key, Object value, CacheConfModel ccm) {
		boolean flag = false;
		cacheMap.put(key, value);
		cacheConfMap.put(key, ccm);

		System.out.println("now addcache==" + cacheMap.size());
		return true;
	} 
	/**
	 * 删除缓存
	 * 
	 * @param key
	 * @return
	 */
	public boolean removeCache(Object key) {
		cacheMap.remove(key);
		cacheConfMap.remove(key);

		System.out.println("now removeCache==" + cacheMap.size());

		return true;
	}

	/**
	 * 清除缓存的类
	 * 
	 * @author wanglj 继承Thread线程类
	 */
	private static class ClearCache extends Thread {
		public void run() {
			while (true) {
				Set tempSet = new HashSet();
				Set set = cacheConfMap.keySet();
				Iterator it = set.iterator();
				while (it.hasNext()) {
					Object key = it.next();
					CacheConfModel ccm = (CacheConfModel) cacheConfMap.get(key);
					// 比较是否需要清除
					if (!ccm.isForever()) {
						if ((new Date().getTime() - ccm.getBeginTime()) >= ccm
								.getDurableTime() * 60 * 1000) {
							// 可以清除，先记录下来
							tempSet.add(key);
						}
					}
				}
				// 真正清除
				Iterator tempIt = tempSet.iterator();
				while (tempIt.hasNext()) {
					Object key = tempIt.next();
					cacheMap.remove(key);
					cacheConfMap.remove(key);
				}
				System.out.println("now thread================>"
						+ cacheMap.size());
				// 休息
				try {
					Thread.sleep(60 * 1000L);
				} catch (InterruptedException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}
	}
}
