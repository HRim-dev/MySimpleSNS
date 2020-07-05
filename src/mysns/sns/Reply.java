package mysns.sns;

public class Reply {
		// 댓글 고유번호 id
		private int rid;
		
		//게시글 고유 번호 id
		private int mid;
		
		//댓글 작성자
		private String uid;
			
		//댓글 작성일
		private String date;

		//댓글 내용
		private String rmsg;

		public int getRid() {
			return rid;
		}

		public void setRid(int rid) {
			this.rid = rid;
		}

		public int getMid() {
			return mid;
		}

		public void setMid(int mid) {
			this.mid = mid;
		}

		public String getUid() {
			return uid;
		}

		public void setUid(String uid) {
			this.uid = uid;
		}

		public String getDate() {
			return date;
		}

		public void setDate(String date) {
			this.date = date;
		}

		public String getRmsg() {
			return rmsg;
		}

		public void setRmsg(String rmsg) {
			this.rmsg = rmsg;
		}

}
