.class Lcom/crashlytics/android/core/ReportUploader$Worker;
.super Lio/fabric/sdk/android/services/common/BackgroundPriorityRunnable;
.source "ReportUploader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/crashlytics/android/core/ReportUploader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Worker"
.end annotation


# instance fields
.field private final delay:F

.field private final sendCheck:Lcom/crashlytics/android/core/ReportUploader$SendCheck;

.field final synthetic this$0:Lcom/crashlytics/android/core/ReportUploader;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/core/ReportUploader;FLcom/crashlytics/android/core/ReportUploader$SendCheck;)V
    .locals 0
    .param p2, "delay"    # F
    .param p3, "sendCheck"    # Lcom/crashlytics/android/core/ReportUploader$SendCheck;

    .line 152
    iput-object p1, p0, Lcom/crashlytics/android/core/ReportUploader$Worker;->this$0:Lcom/crashlytics/android/core/ReportUploader;

    invoke-direct {p0}, Lio/fabric/sdk/android/services/common/BackgroundPriorityRunnable;-><init>()V

    .line 153
    iput p2, p0, Lcom/crashlytics/android/core/ReportUploader$Worker;->delay:F

    .line 154
    iput-object p3, p0, Lcom/crashlytics/android/core/ReportUploader$Worker;->sendCheck:Lcom/crashlytics/android/core/ReportUploader$SendCheck;

    .line 155
    return-void
.end method

.method private attemptUploadWithRetry()V
    .locals 10

    .line 170
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting report processing in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/crashlytics/android/core/ReportUploader$Worker;->delay:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " second(s)..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CrashlyticsCore"

    invoke-interface {v0, v2, v1}, Lio/fabric/sdk/android/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    iget v0, p0, Lcom/crashlytics/android/core/ReportUploader$Worker;->delay:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    .line 175
    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float v0, v0, v1

    float-to-long v0, v0

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    goto :goto_0

    .line 176
    :catch_0
    move-exception v0

    .line 177
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 178
    return-void

    .line 182
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    :goto_0
    invoke-static {}, Lcom/crashlytics/android/core/CrashlyticsCore;->getInstance()Lcom/crashlytics/android/core/CrashlyticsCore;

    move-result-object v0

    .line 183
    .local v0, "crashlyticsCore":Lcom/crashlytics/android/core/CrashlyticsCore;
    invoke-virtual {v0}, Lcom/crashlytics/android/core/CrashlyticsCore;->getController()Lcom/crashlytics/android/core/CrashlyticsController;

    move-result-object v1

    .line 184
    .local v1, "controller":Lcom/crashlytics/android/core/CrashlyticsController;
    iget-object v3, p0, Lcom/crashlytics/android/core/ReportUploader$Worker;->this$0:Lcom/crashlytics/android/core/ReportUploader;

    invoke-virtual {v3}, Lcom/crashlytics/android/core/ReportUploader;->findReports()Ljava/util/List;

    move-result-object v3

    .line 186
    .local v3, "reports":Ljava/util/List;, "Ljava/util/List<Lcom/crashlytics/android/core/Report;>;"
    invoke-virtual {v1}, Lcom/crashlytics/android/core/CrashlyticsController;->isHandlingException()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 190
    return-void

    .line 191
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/crashlytics/android/core/ReportUploader$Worker;->sendCheck:Lcom/crashlytics/android/core/ReportUploader$SendCheck;

    invoke-interface {v4}, Lcom/crashlytics/android/core/ReportUploader$SendCheck;->canSendReports()Z

    move-result v4

    if-nez v4, :cond_3

    .line 193
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "User declined to send. Removing "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " Report(s)."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v2, v5}, Lio/fabric/sdk/android/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/crashlytics/android/core/Report;

    .line 196
    .local v4, "report":Lcom/crashlytics/android/core/Report;
    invoke-interface {v4}, Lcom/crashlytics/android/core/Report;->remove()V

    .line 197
    .end local v4    # "report":Lcom/crashlytics/android/core/Report;
    goto :goto_1

    .line 198
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_2
    return-void

    .line 201
    :cond_3
    const/4 v4, 0x0

    .line 202
    .local v4, "retryCount":I
    :cond_4
    :goto_2
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_7

    .line 203
    invoke-virtual {v1}, Lcom/crashlytics/android/core/CrashlyticsController;->isHandlingException()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 213
    return-void

    .line 216
    :cond_5
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Attempting to send "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " report(s)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v2, v6}, Lio/fabric/sdk/android/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/crashlytics/android/core/Report;

    .line 219
    .local v6, "report":Lcom/crashlytics/android/core/Report;
    iget-object v7, p0, Lcom/crashlytics/android/core/ReportUploader$Worker;->this$0:Lcom/crashlytics/android/core/ReportUploader;

    invoke-virtual {v7, v6}, Lcom/crashlytics/android/core/ReportUploader;->forceUpload(Lcom/crashlytics/android/core/Report;)Z

    .line 220
    .end local v6    # "report":Lcom/crashlytics/android/core/Report;
    goto :goto_3

    .line 223
    .end local v5    # "i$":Ljava/util/Iterator;
    :cond_6
    iget-object v5, p0, Lcom/crashlytics/android/core/ReportUploader$Worker;->this$0:Lcom/crashlytics/android/core/ReportUploader;

    invoke-virtual {v5}, Lcom/crashlytics/android/core/ReportUploader;->findReports()Ljava/util/List;

    move-result-object v3

    .line 224
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    .line 225
    # getter for: Lcom/crashlytics/android/core/ReportUploader;->RETRY_INTERVALS:[S
    invoke-static {}, Lcom/crashlytics/android/core/ReportUploader;->access$100()[S

    move-result-object v5

    add-int/lit8 v6, v4, 0x1

    .end local v4    # "retryCount":I
    .local v6, "retryCount":I
    # getter for: Lcom/crashlytics/android/core/ReportUploader;->RETRY_INTERVALS:[S
    invoke-static {}, Lcom/crashlytics/android/core/ReportUploader;->access$100()[S

    move-result-object v7

    array-length v7, v7

    add-int/lit8 v7, v7, -0x1

    invoke-static {v4, v7}, Ljava/lang/Math;->min(II)I

    move-result v4

    aget-short v4, v5, v4

    int-to-long v4, v4

    .line 227
    .local v4, "interval":J
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Report submisson: scheduling delayed retry in "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " seconds"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v2, v8}, Lio/fabric/sdk/android/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    const-wide/16 v7, 0x3e8

    mul-long v7, v7, v4

    :try_start_1
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 235
    nop

    .line 236
    .end local v4    # "interval":J
    move v4, v6

    goto/16 :goto_2

    .line 232
    .restart local v4    # "interval":J
    :catch_1
    move-exception v2

    .line 233
    .local v2, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->interrupt()V

    .line 234
    return-void

    .line 238
    .end local v2    # "e":Ljava/lang/InterruptedException;
    .end local v6    # "retryCount":I
    .local v4, "retryCount":I
    :cond_7
    return-void
.end method


# virtual methods
.method public onRun()V
    .locals 4

    .line 160
    :try_start_0
    invoke-direct {p0}, Lcom/crashlytics/android/core/ReportUploader$Worker;->attemptUploadWithRetry()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    goto :goto_0

    .line 161
    :catch_0
    move-exception v0

    .line 162
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v1

    const-string v2, "CrashlyticsCore"

    const-string v3, "An unexpected error occurred while attempting to upload crash reports."

    invoke-interface {v1, v2, v3, v0}, Lio/fabric/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 166
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    iget-object v0, p0, Lcom/crashlytics/android/core/ReportUploader$Worker;->this$0:Lcom/crashlytics/android/core/ReportUploader;

    const/4 v1, 0x0

    # setter for: Lcom/crashlytics/android/core/ReportUploader;->uploadThread:Ljava/lang/Thread;
    invoke-static {v0, v1}, Lcom/crashlytics/android/core/ReportUploader;->access$002(Lcom/crashlytics/android/core/ReportUploader;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 167
    return-void
.end method
