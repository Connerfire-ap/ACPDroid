.class Lorg/openobservatory/ooniprobe/utils/JSONUtils$JSONL$JSONIterator;
.super Ljava/lang/Object;
.source "JSONUtils.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openobservatory/ooniprobe/utils/JSONUtils$JSONL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "JSONIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field private br:Ljava/io/BufferedReader;

.field private file:Ljava/io/File;

.field final synthetic this$0:Lorg/openobservatory/ooniprobe/utils/JSONUtils$JSONL;


# direct methods
.method public constructor <init>(Lorg/openobservatory/ooniprobe/utils/JSONUtils$JSONL;Ljava/io/BufferedReader;Ljava/io/File;)V
    .locals 0
    .param p2, "br"    # Ljava/io/BufferedReader;
    .param p3, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            "this$0",
            "br",
            "file"
        }
    .end annotation

    .line 60
    iput-object p1, p0, Lorg/openobservatory/ooniprobe/utils/JSONUtils$JSONL$JSONIterator;->this$0:Lorg/openobservatory/ooniprobe/utils/JSONUtils$JSONL;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p2, p0, Lorg/openobservatory/ooniprobe/utils/JSONUtils$JSONL$JSONIterator;->br:Ljava/io/BufferedReader;

    .line 62
    iput-object p3, p0, Lorg/openobservatory/ooniprobe/utils/JSONUtils$JSONL$JSONIterator;->file:Ljava/io/File;

    .line 63
    return-void
.end method

.method private closeReader()V
    .locals 3

    .line 67
    :try_start_0
    iget-object v0, p0, Lorg/openobservatory/ooniprobe/utils/JSONUtils$JSONL$JSONIterator;->br:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    goto :goto_0

    .line 68
    :catch_0
    move-exception v0

    .line 69
    .local v0, "f":Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to close file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/openobservatory/ooniprobe/utils/JSONUtils$JSONL$JSONIterator;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "JSONLIterator"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    .end local v0    # "f":Ljava/io/IOException;
    :goto_0
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 4

    .line 76
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lorg/openobservatory/ooniprobe/utils/JSONUtils$JSONL$JSONIterator;->br:Ljava/io/BufferedReader;

    invoke-virtual {v1}, Ljava/io/BufferedReader;->ready()Z

    move-result v1

    if-nez v1, :cond_0

    .line 77
    invoke-direct {p0}, Lorg/openobservatory/ooniprobe/utils/JSONUtils$JSONL$JSONIterator;->closeReader()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    return v0

    .line 80
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 81
    :catch_0
    move-exception v1

    .line 82
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to read file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/openobservatory/ooniprobe/utils/JSONUtils$JSONL$JSONIterator;->file:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "JSONLIterator"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    invoke-direct {p0}, Lorg/openobservatory/ooniprobe/utils/JSONUtils$JSONL$JSONIterator;->closeReader()V

    .line 84
    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 56
    invoke-virtual {p0}, Lorg/openobservatory/ooniprobe/utils/JSONUtils$JSONL$JSONIterator;->next()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public next()Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    .line 89
    const-string v0, "JSONLIterator"

    invoke-virtual {p0}, Lorg/openobservatory/ooniprobe/utils/JSONUtils$JSONL$JSONIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 94
    :try_start_0
    iget-object v1, p0, Lorg/openobservatory/ooniprobe/utils/JSONUtils$JSONL$JSONIterator;->br:Ljava/io/BufferedReader;

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 95
    .local v1, "line":Ljava/lang/String;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 99
    .end local v1    # "line":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 100
    .local v1, "e":Lorg/json/JSONException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to parse JSON in line "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/openobservatory/ooniprobe/utils/JSONUtils$JSONL$JSONIterator;->file:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-virtual {p0}, Lorg/openobservatory/ooniprobe/utils/JSONUtils$JSONL$JSONIterator;->next()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0

    .line 96
    .end local v1    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v1

    .line 97
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to read line "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/openobservatory/ooniprobe/utils/JSONUtils$JSONL$JSONIterator;->file:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    invoke-virtual {p0}, Lorg/openobservatory/ooniprobe/utils/JSONUtils$JSONL$JSONIterator;->next()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0

    .line 90
    .end local v1    # "e":Ljava/io/IOException;
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 1

    .line 106
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
