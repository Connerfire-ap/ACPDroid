.class Lorg/jacoco/agent/rt/internal_8ff85ea/ClassFileDumper;
.super Ljava/lang/Object;
.source "ClassFileDumper.java"


# instance fields
.field private final location:Ljava/io/File;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "location"    # Ljava/lang/String;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    if-nez p1, :cond_0

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/ClassFileDumper;->location:Ljava/io/File;

    goto :goto_0

    .line 39
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/ClassFileDumper;->location:Ljava/io/File;

    .line 41
    :goto_0
    return-void
.end method


# virtual methods
.method dump(Ljava/lang/String;[B)V
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "contents"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/ClassFileDumper;->location:Ljava/io/File;

    if-eqz v0, :cond_1

    .line 58
    const/16 v0, 0x2f

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 59
    .local v0, "pkgpos":I
    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 60
    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/ClassFileDumper;->location:Ljava/io/File;

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 61
    .local v1, "outputdir":Ljava/io/File;
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .local v3, "localname":Ljava/lang/String;
    goto :goto_0

    .line 63
    .end local v1    # "outputdir":Ljava/io/File;
    .end local v3    # "localname":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/ClassFileDumper;->location:Ljava/io/File;

    .line 64
    .restart local v1    # "outputdir":Ljava/io/File;
    move-object v3, p1

    .line 66
    .restart local v3    # "localname":Ljava/lang/String;
    :goto_0
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 67
    invoke-static {p2}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/data/CRC64;->checksum([B)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 68
    .local v4, "id":Ljava/lang/Long;
    new-instance v5, Ljava/io/File;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v3, v6, v2

    const/4 v2, 0x1

    aput-object v4, v6, v2

    const-string v2, "%s.%016x.class"

    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v2, v5

    .line 70
    .local v2, "file":Ljava/io/File;
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 71
    .local v5, "out":Ljava/io/OutputStream;
    invoke-virtual {v5, p2}, Ljava/io/OutputStream;->write([B)V

    .line 72
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    .line 74
    .end local v0    # "pkgpos":I
    .end local v1    # "outputdir":Ljava/io/File;
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "localname":Ljava/lang/String;
    .end local v4    # "id":Ljava/lang/Long;
    .end local v5    # "out":Ljava/io/OutputStream;
    :cond_1
    return-void
.end method
