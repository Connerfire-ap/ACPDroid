.class public Lorg/jacoco/agent/rt/internal_8ff85ea/core/instr/Instrumenter;
.super Ljava/lang/Object;
.source "Instrumenter.java"


# instance fields
.field private final accessorGenerator:Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/IExecutionDataAccessorGenerator;

.field private final signatureRemover:Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/SignatureRemover;


# direct methods
.method public constructor <init>(Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/IExecutionDataAccessorGenerator;)V
    .locals 1
    .param p1, "runtime"    # Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/IExecutionDataAccessorGenerator;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/instr/Instrumenter;->accessorGenerator:Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/IExecutionDataAccessorGenerator;

    .line 54
    new-instance v0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/SignatureRemover;

    invoke-direct {v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/SignatureRemover;-><init>()V

    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/instr/Instrumenter;->signatureRemover:Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/SignatureRemover;

    .line 55
    return-void
.end method

.method private copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 4
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 248
    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 250
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    move v2, v1

    .local v2, "len":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 251
    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 253
    :cond_0
    return-void
.end method

.method private instrumentError(Ljava/lang/String;Ljava/lang/RuntimeException;)Ljava/io/IOException;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/RuntimeException;

    .line 166
    new-instance v0, Ljava/io/IOException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v2, "Error while instrumenting class %s."

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 168
    .local v0, "ex":Ljava/io/IOException;
    invoke-virtual {v0, p2}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 169
    return-object v0
.end method

.method private instrumentGzip(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/lang/String;)I
    .locals 2
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "output"    # Ljava/io/OutputStream;
    .param p3, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 231
    new-instance v0, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v0, p2}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 232
    .local v0, "gzout":Ljava/util/zip/GZIPOutputStream;
    new-instance v1, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v1, p1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p0, v1, v0, p3}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/instr/Instrumenter;->instrumentAll(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/lang/String;)I

    move-result v1

    .line 233
    .local v1, "count":I
    invoke-virtual {v0}, Ljava/util/zip/GZIPOutputStream;->finish()V

    .line 234
    return v1
.end method

.method private instrumentPack200(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/lang/String;)I
    .locals 3
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "output"    # Ljava/io/OutputStream;
    .param p3, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 239
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 240
    .local v0, "buffer":Ljava/io/ByteArrayOutputStream;
    invoke-static {p1}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/Pack200Streams;->unpack(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {p0, v1, v0, p3}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/instr/Instrumenter;->instrumentAll(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/lang/String;)I

    move-result v1

    .line 242
    .local v1, "count":I
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-static {v2, p2}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/Pack200Streams;->pack([BLjava/io/OutputStream;)V

    .line 243
    return v1
.end method

.method private instrumentZip(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/lang/String;)I
    .locals 7
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "output"    # Ljava/io/OutputStream;
    .param p3, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 209
    new-instance v0, Ljava/util/zip/ZipInputStream;

    invoke-direct {v0, p1}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 210
    .local v0, "zipin":Ljava/util/zip/ZipInputStream;
    new-instance v1, Ljava/util/zip/ZipOutputStream;

    invoke-direct {v1, p2}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 212
    .local v1, "zipout":Ljava/util/zip/ZipOutputStream;
    const/4 v2, 0x0

    .line 213
    .local v2, "count":I
    :goto_0
    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v3

    move-object v4, v3

    .local v4, "entry":Ljava/util/zip/ZipEntry;
    if-eqz v3, :cond_2

    .line 214
    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    .line 215
    .local v3, "entryName":Ljava/lang/String;
    iget-object v5, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/instr/Instrumenter;->signatureRemover:Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/SignatureRemover;

    invoke-virtual {v5, v3}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/SignatureRemover;->removeEntry(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 216
    goto :goto_0

    .line 219
    :cond_0
    new-instance v5, Ljava/util/zip/ZipEntry;

    invoke-direct {v5, v3}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 220
    iget-object v5, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/instr/Instrumenter;->signatureRemover:Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/SignatureRemover;

    invoke-virtual {v5, v3, v0, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/SignatureRemover;->filterEntry(Ljava/lang/String;Ljava/io/InputStream;Ljava/io/OutputStream;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 221
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "@"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v0, v1, v5}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/instr/Instrumenter;->instrumentAll(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/lang/String;)I

    move-result v5

    add-int/2addr v2, v5

    .line 223
    :cond_1
    invoke-virtual {v1}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 224
    .end local v3    # "entryName":Ljava/lang/String;
    goto :goto_0

    .line 225
    :cond_2
    invoke-virtual {v1}, Ljava/util/zip/ZipOutputStream;->finish()V

    .line 226
    return v2
.end method


# virtual methods
.method public instrument(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 2
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "output"    # Ljava/io/OutputStream;
    .param p3, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 158
    :try_start_0
    invoke-static {p1}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/Java9Support;->readFully(Ljava/io/InputStream;)[B

    move-result-object v0

    invoke-virtual {p0, v0, p3}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/instr/Instrumenter;->instrument([BLjava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    nop

    .line 162
    return-void

    .line 159
    :catch_0
    move-exception v0

    .line 160
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-direct {p0, p3, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/instr/Instrumenter;->instrumentError(Ljava/lang/String;Ljava/lang/RuntimeException;)Ljava/io/IOException;

    move-result-object v1

    throw v1
.end method

.method public instrument(Ljava/io/InputStream;Ljava/lang/String;)[B
    .locals 2
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 136
    :try_start_0
    invoke-static {p1}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/Java9Support;->readFully(Ljava/io/InputStream;)[B

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/instr/Instrumenter;->instrument([BLjava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 137
    :catch_0
    move-exception v0

    .line 138
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-direct {p0, p2, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/instr/Instrumenter;->instrumentError(Ljava/lang/String;Ljava/lang/RuntimeException;)Ljava/io/IOException;

    move-result-object v1

    throw v1
.end method

.method public instrument(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;)[B
    .locals 5
    .param p1, "reader"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;

    .line 79
    new-instance v0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/instr/Instrumenter$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/instr/Instrumenter$1;-><init>(Lorg/jacoco/agent/rt/internal_8ff85ea/core/instr/Instrumenter;Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;I)V

    .line 86
    .local v0, "writer":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/instr/Instrumenter;->accessorGenerator:Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/IExecutionDataAccessorGenerator;

    invoke-static {p1, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/ProbeArrayStrategyFactory;->createFor(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/IExecutionDataAccessorGenerator;)Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/IProbeArrayStrategy;

    move-result-object v1

    .line 88
    .local v1, "strategy":Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/IProbeArrayStrategy;
    new-instance v2, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/flow/ClassProbesAdapter;

    new-instance v3, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/ClassInstrumenter;

    invoke-direct {v3, v1, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/ClassInstrumenter;-><init>(Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/IProbeArrayStrategy;Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassVisitor;)V

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/flow/ClassProbesAdapter;-><init>(Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/flow/ClassProbesVisitor;Z)V

    .line 90
    .local v2, "visitor":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassVisitor;
    const/16 v3, 0x8

    invoke-virtual {p1, v2, v3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->accept(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassVisitor;I)V

    .line 91
    invoke-virtual {v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->toByteArray()[B

    move-result-object v3

    return-object v3
.end method

.method public instrument([BLjava/lang/String;)[B
    .locals 2
    .param p1, "buffer"    # [B
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 108
    :try_start_0
    invoke-static {p1}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/Java9Support;->isPatchRequired([B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    new-instance v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;

    invoke-static {p1}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/Java9Support;->downgrade([B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;-><init>([B)V

    invoke-virtual {p0, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/instr/Instrumenter;->instrument(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;)[B

    move-result-object v0

    .line 111
    .local v0, "result":[B
    invoke-static {v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/Java9Support;->upgrade([B)V

    .line 112
    return-object v0

    .line 114
    .end local v0    # "result":[B
    :cond_0
    new-instance v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;

    invoke-direct {v0, p1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;-><init>([B)V

    invoke-virtual {p0, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/instr/Instrumenter;->instrument(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 116
    :catch_0
    move-exception v0

    .line 117
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-direct {p0, p2, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/instr/Instrumenter;->instrumentError(Ljava/lang/String;Ljava/lang/RuntimeException;)Ljava/io/IOException;

    move-result-object v1

    throw v1
.end method

.method public instrumentAll(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/lang/String;)I
    .locals 2
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "output"    # Ljava/io/OutputStream;
    .param p3, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 190
    new-instance v0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/ContentTypeDetector;

    invoke-direct {v0, p1}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/ContentTypeDetector;-><init>(Ljava/io/InputStream;)V

    .line 191
    .local v0, "detector":Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/ContentTypeDetector;
    invoke-virtual {v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/ContentTypeDetector;->getType()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 202
    invoke-virtual {v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/ContentTypeDetector;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/instr/Instrumenter;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 203
    const/4 v1, 0x0

    return v1

    .line 196
    :sswitch_0
    invoke-virtual {v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/ContentTypeDetector;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {p0, v1, p2, p3}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/instr/Instrumenter;->instrumentZip(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/lang/String;)I

    move-result v1

    return v1

    .line 198
    :sswitch_1
    invoke-virtual {v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/ContentTypeDetector;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {p0, v1, p2, p3}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/instr/Instrumenter;->instrumentGzip(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/lang/String;)I

    move-result v1

    return v1

    .line 200
    :sswitch_2
    invoke-virtual {v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/ContentTypeDetector;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {p0, v1, p2, p3}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/instr/Instrumenter;->instrumentPack200(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/lang/String;)I

    move-result v1

    return v1

    .line 193
    :sswitch_3
    invoke-virtual {v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/ContentTypeDetector;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {p0, v1, p2, p3}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/instr/Instrumenter;->instrument(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 194
    const/4 v1, 0x1

    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x35014542 -> :sswitch_3
        -0x35012ff3 -> :sswitch_2
        0x1f8b0000 -> :sswitch_1
        0x504b0304 -> :sswitch_0
    .end sparse-switch
.end method

.method public setRemoveSignatures(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 67
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/instr/Instrumenter;->signatureRemover:Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/SignatureRemover;

    invoke-virtual {v0, p1}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/SignatureRemover;->setActive(Z)V

    .line 68
    return-void
.end method
