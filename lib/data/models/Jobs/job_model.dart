class JobResponse {
  final String status;
  final String message;
  final JobData data;

  JobResponse({required this.status, required this.message, required this.data});

  factory JobResponse.fromJson(Map<String, dynamic> json) {
    return JobResponse(
      status: json['status'],
      message: json['message'],
      data: JobData.fromJson(json['data']),
    );
  }
}

class JobData {
  final List<Job> docs;
  final int totalDocs;
  final int limit;
  final int totalPages;
  final int page;
  final int pagingCounter;
  final bool hasPrevPage;
  final bool hasNextPage;
  final int? prevPage;
  final int? nextPage;

  JobData({
    required this.docs,
    required this.totalDocs,
    required this.limit,
    required this.totalPages,
    required this.page,
    required this.pagingCounter,
    required this.hasPrevPage,
    required this.hasNextPage,
    this.prevPage,
    this.nextPage,
  });

  factory JobData.fromJson(Map<String, dynamic> json) {
    return JobData(
      docs: (json['docs'] as List).map((i) => Job.fromJson(i)).toList(),
      totalDocs: json['totalDocs'],
      limit: json['limit'],
      totalPages: json['totalPages'],
      page: json['page'],
      pagingCounter: json['pagingCounter'],
      hasPrevPage: json['hasPrevPage'],
      hasNextPage: json['hasNextPage'],
      prevPage: json['prevPage'],
      nextPage: json['nextPage'],
    );
  }
}

class Job {
  final String id;
  final String creatorId;
  final String title;
  final String description;
  final List<String> responsibilities;
  final List<String> category;
  final int budgetFrom;
  final int budgetTo;
  final int duration;
  final bool public;
  final bool hired;
  final bool suspended;
  final String jobId;
  final String createdAt;
  final String updatedAt;
  final int version;
  final List<Creator> creator;
  final int bidsCount;

  Job({
    required this.id,
    required this.creatorId,
    required this.title,
    required this.description,
    required this.responsibilities,
    required this.category,
    required this.budgetFrom,
    required this.budgetTo,
    required this.duration,
    required this.public,
    required this.hired,
    required this.suspended,
    required this.jobId,
    required this.createdAt,
    required this.updatedAt,
    required this.version,
    required this.creator,
    required this.bidsCount,
  });

  factory Job.fromJson(Map<String, dynamic> json) {
    return Job(
      id: json['_id'],
      creatorId: json['creatorId'],
      title: json['title'],
      description: json['description'],
      responsibilities: List<String>.from(json['responsibilities']),
      category: List<String>.from(json['category']),
      budgetFrom: json['budgetFrom'],
      budgetTo: json['budgetTo'],
      duration: json['duration'],
      public: json['public'],
      hired: json['hired'],
      suspended: json['suspended'],
      jobId: json['jobId'],
      createdAt: json['createdAt'],
      updatedAt: json['updatedAt'],
      version: json['__v'],
      creator: (json['creator'] as List).map((i) => Creator.fromJson(i)).toList(),
      bidsCount: json['bidsCount'],
    );
  }
}

class Creator {
  final String id;
  final String userId;
  final String creatorId;

  Creator({
    required this.id,
    required this.userId,
    required this.creatorId,
  });

  factory Creator.fromJson(Map<String, dynamic> json) {
    return Creator(
      id: json['_id'],
      userId: json['userId'],
      creatorId: json['creatorId'],
    );
  }
}


//
//
//THIS IS FOR POSTING JOBS
class JobRequest {
  final String title;
  final List<String> category;
  final int budgetFrom;
  final int budgetTo;
  final String description;
  final int duration;
  final List<String> responsibilities;

  JobRequest({
    required this.title,
    required this.category,
    required this.budgetFrom,
    required this.budgetTo,
    required this.description,
    required this.duration,
    required this.responsibilities,
  });

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'category': category,
      'budgetFrom': budgetFrom,
      'budgetTo': budgetTo,
      'description': description,
      'duration': duration,
      'responsibilities': responsibilities,
    };
  }
}

