.class Lcom/crashlytics/android/core/QueueFileLogStore;
.super Ljava/lang/Object;
.source "QueueFileLogStore.java"

# interfaces
.implements Lcom/crashlytics/android/core/FileLogStore;


# instance fields
.field private logFile:Lio/fabric/sdk/android/services/common/QueueFile;

.field private final maxLogSize:I

.field private final workingFile:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;I)V
    .locals 0
    .param p1, "workingFile"    # Ljava/io/File;
    .param p2, "maxLogSize"    # I

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/crashlytics/android/core/QueueFileLogStore;->workingFile:Ljava/io/File;

    .line 40
    iput p2, p0, Lcom/crashlytics/android/core/QueueFileLogStore;->maxLogSize:I

    .line 41
    return-void
.end method

.method private doWriteToLog(JLjava/lang/String;)V
    .locals 6
    .param p1, "timestamp"    # J
    .param p3, "msg"    # Ljava/lang/String;

    .line 114
    const-string v0, " "

    iget-object v1, p0, Lcom/crashlytics/android/core/QueueFileLogStore;->logFile:Lio/fabric/sdk/android/services/common/QueueFile;

    if-nez v1, :cond_0

    .line 115
    return-void

    .line 117
    :cond_0
    if-nez p3, :cond_1

    .line 118
    const-string p3, "null"

    .line 138
    :cond_1
    :try_start_0
    iget v1, p0, Lcom/crashlytics/android/core/QueueFileLogStore;->maxLogSize:I

    div-int/lit8 v1, v1, 0x4

    .line 140
    .local v1, "quarterMaxLogSize":I
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v1, :cond_2

    .line 141
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {p3, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object p3, v2

    .line 144
    :cond_2
    const-string v2, "\r"

    invoke-virtual {p3, v2, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object p3, v2

    .line 145
    const-string v2, "\n"

    invoke-virtual {p3, v2, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object p3, v0

    .line 147
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%d %s%n"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p3, v3, v4

    invoke-static {v0, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "UTF-8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 150
    .local v0, "msgBytes":[B
    iget-object v2, p0, Lcom/crashlytics/android/core/QueueFileLogStore;->logFile:Lio/fabric/sdk/android/services/common/QueueFile;

    invoke-virtual {v2, v0}, Lio/fabric/sdk/android/services/common/QueueFile;->add([B)V

    .line 153
    :goto_0
    iget-object v2, p0, Lcom/crashlytics/android/core/QueueFileLogStore;->logFile:Lio/fabric/sdk/android/services/common/QueueFile;

    invoke-virtual {v2}, Lio/fabric/sdk/android/services/common/QueueFile;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/crashlytics/android/core/QueueFileLogStore;->logFile:Lio/fabric/sdk/android/services/common/QueueFile;

    invoke-virtual {v2}, Lio/fabric/sdk/android/services/common/QueueFile;->usedBytes()I

    move-result v2

    iget v3, p0, Lcom/crashlytics/android/core/QueueFileLogStore;->maxLogSize:I

    if-le v2, v3, :cond_3

    .line 154
    iget-object v2, p0, Lcom/crashlytics/android/core/QueueFileLogStore;->logFile:Lio/fabric/sdk/android/services/common/QueueFile;

    invoke-virtual {v2}, Lio/fabric/sdk/android/services/common/QueueFile;->remove()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 159
    .end local v0    # "msgBytes":[B
    .end local v1    # "quarterMaxLogSize":I
    :cond_3
    goto :goto_1

    .line 156
    :catch_0
    move-exception v0

    .line 157
    .local v0, "e":Ljava/io/IOException;
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v1

    const-string v2, "CrashlyticsCore"

    const-string v3, "There was a problem writing to the Crashlytics log."

    invoke-interface {v1, v2, v3, v0}, Lio/fabric/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 160
    .end local v0    # "e":Ljava/io/IOException;
    :goto_1
    return-void
.end method

.method private openLogFile()V
    .locals 4

    .line 103
    iget-object v0, p0, Lcom/crashlytics/android/core/QueueFileLogStore;->logFile:Lio/fabric/sdk/android/services/common/QueueFile;

    if-nez v0, :cond_0

    .line 105
    :try_start_0
    new-instance v0, Lio/fabric/sdk/android/services/common/QueueFile;

    iget-object v1, p0, Lcom/crashlytics/android/core/QueueFileLogStore;->workingFile:Ljava/io/File;

    invoke-direct {v0, v1}, Lio/fabric/sdk/android/services/common/QueueFile;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/crashlytics/android/core/QueueFileLogStore;->logFile:Lio/fabric/sdk/android/services/common/QueueFile;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    goto :goto_0

    .line 106
    :catch_0
    move-exception v0

    .line 107
    .local v0, "e":Ljava/io/IOException;
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not open log file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/crashlytics/android/core/QueueFileLogStore;->workingFile:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CrashlyticsCore"

    invoke-interface {v1, v3, v2, v0}, Lio/fabric/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 111
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public closeLogFile()V
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/crashlytics/android/core/QueueFileLogStore;->logFile:Lio/fabric/sdk/android/services/common/QueueFile;

    const-string v1, "There was a problem closing the Crashlytics log file."

    invoke-static {v0, v1}, Lio/fabric/sdk/android/services/common/CommonUtils;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/crashlytics/android/core/QueueFileLogStore;->logFile:Lio/fabric/sdk/android/services/common/QueueFile;

    .line 94
    return-void
.end method

.method public deleteLogFile()V
    .locals 1

    .line 98
    invoke-virtual {p0}, Lcom/crashlytics/android/core/QueueFileLogStore;->closeLogFile()V

    .line 99
    iget-object v0, p0, Lcom/crashlytics/android/core/QueueFileLogStore;->workingFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 100
    return-void
.end method

.method public getLogAsByteString()Lcom/crashlytics/android/core/ByteString;
    .locals 7

    .line 51
    iget-object v0, p0, Lcom/crashlytics/android/core/QueueFileLogStore;->workingFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 52
    return-object v1

    .line 56
    :cond_0
    invoke-direct {p0}, Lcom/crashlytics/android/core/QueueFileLogStore;->openLogFile()V

    .line 58
    iget-object v0, p0, Lcom/crashlytics/android/core/QueueFileLogStore;->logFile:Lio/fabric/sdk/android/services/common/QueueFile;

    if-nez v0, :cond_1

    .line 60
    return-object v1

    .line 66
    :cond_1
    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput v2, v1, v2

    .line 68
    .local v1, "offsetHolder":[I
    invoke-virtual {v0}, Lio/fabric/sdk/android/services/common/QueueFile;->usedBytes()I

    move-result v0

    new-array v0, v0, [B

    .line 71
    .local v0, "logBytes":[B
    :try_start_0
    iget-object v3, p0, Lcom/crashlytics/android/core/QueueFileLogStore;->logFile:Lio/fabric/sdk/android/services/common/QueueFile;

    new-instance v4, Lcom/crashlytics/android/core/QueueFileLogStore$1;

    invoke-direct {v4, p0, v0, v1}, Lcom/crashlytics/android/core/QueueFileLogStore$1;-><init>(Lcom/crashlytics/android/core/QueueFileLogStore;[B[I)V

    invoke-virtual {v3, v4}, Lio/fabric/sdk/android/services/common/QueueFile;->forEach(Lio/fabric/sdk/android/services/common/QueueFile$ElementReader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    goto :goto_0

    .line 82
    :catch_0
    move-exception v3

    .line 83
    .local v3, "e":Ljava/io/IOException;
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v4

    const-string v5, "CrashlyticsCore"

    const-string v6, "A problem occurred while reading the Crashlytics log file."

    invoke-interface {v4, v5, v6, v3}, Lio/fabric/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 87
    .end local v3    # "e":Ljava/io/IOException;
    :goto_0
    aget v3, v1, v2

    invoke-static {v0, v2, v3}, Lcom/crashlytics/android/core/ByteString;->copyFrom([BII)Lcom/crashlytics/android/core/ByteString;

    move-result-object v2

    return-object v2
.end method

.method public writeToLog(JLjava/lang/String;)V
    .locals 0
    .param p1, "timestamp"    # J
    .param p3, "msg"    # Ljava/lang/String;

    .line 45
    invoke-direct {p0}, Lcom/crashlytics/android/core/QueueFileLogStore;->openLogFile()V

    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/crashlytics/android/core/QueueFileLogStore;->doWriteToLog(JLjava/lang/String;)V

    .line 47
    return-void
.end method
