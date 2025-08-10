.class public final Lorg/threeten/bp/zone/TzdbZoneRulesProvider;
.super Lorg/threeten/bp/zone/ZoneRulesProvider;
.source "TzdbZoneRulesProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/threeten/bp/zone/TzdbZoneRulesProvider$Version;
    }
.end annotation


# instance fields
.field private loadedUrls:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private regionIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final versions:Ljava/util/concurrent/ConcurrentNavigableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentNavigableMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/threeten/bp/zone/TzdbZoneRulesProvider$Version;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 87
    invoke-direct {p0}, Lorg/threeten/bp/zone/ZoneRulesProvider;-><init>()V

    .line 73
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentSkipListMap;-><init>()V

    iput-object v0, p0, Lorg/threeten/bp/zone/TzdbZoneRulesProvider;->versions:Ljava/util/concurrent/ConcurrentNavigableMap;

    .line 78
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lorg/threeten/bp/zone/TzdbZoneRulesProvider;->loadedUrls:Ljava/util/Set;

    .line 88
    const-class v0, Lorg/threeten/bp/zone/ZoneRulesProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/threeten/bp/zone/TzdbZoneRulesProvider;->load(Ljava/lang/ClassLoader;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 89
    new-instance v0, Lorg/threeten/bp/zone/ZoneRulesException;

    const-string v1, "No time-zone rules found for \'TZDB\'"

    invoke-direct {v0, v1}, Lorg/threeten/bp/zone/ZoneRulesException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 3
    .param p1, "stream"    # Ljava/io/InputStream;

    .prologue
    .line 121
    invoke-direct {p0}, Lorg/threeten/bp/zone/ZoneRulesProvider;-><init>()V

    .line 73
    new-instance v1, Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentSkipListMap;-><init>()V

    iput-object v1, p0, Lorg/threeten/bp/zone/TzdbZoneRulesProvider;->versions:Ljava/util/concurrent/ConcurrentNavigableMap;

    .line 78
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v1, p0, Lorg/threeten/bp/zone/TzdbZoneRulesProvider;->loadedUrls:Ljava/util/Set;

    .line 123
    :try_start_0
    invoke-direct {p0, p1}, Lorg/threeten/bp/zone/TzdbZoneRulesProvider;->load(Ljava/io/InputStream;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    return-void

    .line 124
    :catch_0
    move-exception v0

    .line 125
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Lorg/threeten/bp/zone/ZoneRulesException;

    const-string v2, "Unable to load TZDB time-zone rules"

    invoke-direct {v1, v2, v0}, Lorg/threeten/bp/zone/ZoneRulesException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>(Ljava/net/URL;)V
    .locals 4
    .param p1, "url"    # Ljava/net/URL;

    .prologue
    .line 102
    invoke-direct {p0}, Lorg/threeten/bp/zone/ZoneRulesProvider;-><init>()V

    .line 73
    new-instance v1, Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentSkipListMap;-><init>()V

    iput-object v1, p0, Lorg/threeten/bp/zone/TzdbZoneRulesProvider;->versions:Ljava/util/concurrent/ConcurrentNavigableMap;

    .line 78
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v1, p0, Lorg/threeten/bp/zone/TzdbZoneRulesProvider;->loadedUrls:Ljava/util/Set;

    .line 104
    :try_start_0
    invoke-direct {p0, p1}, Lorg/threeten/bp/zone/TzdbZoneRulesProvider;->load(Ljava/net/URL;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 105
    new-instance v1, Lorg/threeten/bp/zone/ZoneRulesException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No time-zone rules found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/threeten/bp/zone/ZoneRulesException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :catch_0
    move-exception v0

    .line 108
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Lorg/threeten/bp/zone/ZoneRulesException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to load TZDB time-zone rules: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/threeten/bp/zone/ZoneRulesException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 110
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_0
    return-void
.end method

.method private load(Ljava/io/InputStream;)Z
    .locals 8
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/StreamCorruptedException;
        }
    .end annotation

    .prologue
    .line 212
    const/4 v4, 0x0

    .line 213
    .local v4, "updated":Z
    invoke-direct {p0, p1}, Lorg/threeten/bp/zone/TzdbZoneRulesProvider;->loadData(Ljava/io/InputStream;)Ljava/lang/Iterable;

    move-result-object v3

    .line 214
    .local v3, "loadedVersions":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lorg/threeten/bp/zone/TzdbZoneRulesProvider$Version;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/threeten/bp/zone/TzdbZoneRulesProvider$Version;

    .line 217
    .local v2, "loadedVersion":Lorg/threeten/bp/zone/TzdbZoneRulesProvider$Version;
    iget-object v5, p0, Lorg/threeten/bp/zone/TzdbZoneRulesProvider;->versions:Ljava/util/concurrent/ConcurrentNavigableMap;

    # getter for: Lorg/threeten/bp/zone/TzdbZoneRulesProvider$Version;->versionId:Ljava/lang/String;
    invoke-static {v2}, Lorg/threeten/bp/zone/TzdbZoneRulesProvider$Version;->access$000(Lorg/threeten/bp/zone/TzdbZoneRulesProvider$Version;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v2}, Ljava/util/concurrent/ConcurrentNavigableMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/zone/TzdbZoneRulesProvider$Version;

    .line 218
    .local v0, "existing":Lorg/threeten/bp/zone/TzdbZoneRulesProvider$Version;
    if-eqz v0, :cond_0

    # getter for: Lorg/threeten/bp/zone/TzdbZoneRulesProvider$Version;->versionId:Ljava/lang/String;
    invoke-static {v0}, Lorg/threeten/bp/zone/TzdbZoneRulesProvider$Version;->access$000(Lorg/threeten/bp/zone/TzdbZoneRulesProvider$Version;)Ljava/lang/String;

    move-result-object v5

    # getter for: Lorg/threeten/bp/zone/TzdbZoneRulesProvider$Version;->versionId:Ljava/lang/String;
    invoke-static {v2}, Lorg/threeten/bp/zone/TzdbZoneRulesProvider$Version;->access$000(Lorg/threeten/bp/zone/TzdbZoneRulesProvider$Version;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 219
    new-instance v5, Lorg/threeten/bp/zone/ZoneRulesException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Data already loaded for TZDB time-zone rules version: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    # getter for: Lorg/threeten/bp/zone/TzdbZoneRulesProvider$Version;->versionId:Ljava/lang/String;
    invoke-static {v2}, Lorg/threeten/bp/zone/TzdbZoneRulesProvider$Version;->access$000(Lorg/threeten/bp/zone/TzdbZoneRulesProvider$Version;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/threeten/bp/zone/ZoneRulesException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 221
    :cond_0
    const/4 v4, 0x1

    .line 222
    goto :goto_0

    .line 223
    .end local v0    # "existing":Lorg/threeten/bp/zone/TzdbZoneRulesProvider$Version;
    .end local v2    # "loadedVersion":Lorg/threeten/bp/zone/TzdbZoneRulesProvider$Version;
    :cond_1
    return v4
.end method

.method private load(Ljava/lang/ClassLoader;)Z
    .locals 8
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 166
    const/4 v3, 0x0

    .line 167
    .local v3, "updated":Z
    const/4 v4, 0x0

    .line 169
    .local v4, "url":Ljava/net/URL;
    :try_start_0
    const-string v5, "org/threeten/bp/TZDB.dat"

    invoke-virtual {p1, v5}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v1

    .line 170
    .local v1, "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/URL;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 171
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/net/URL;

    move-object v4, v0

    .line 172
    invoke-direct {p0, v4}, Lorg/threeten/bp/zone/TzdbZoneRulesProvider;->load(Ljava/net/URL;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    or-int/2addr v3, v5

    goto :goto_0

    .line 174
    .end local v1    # "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/URL;>;"
    :catch_0
    move-exception v2

    .line 175
    .local v2, "ex":Ljava/lang/Exception;
    new-instance v5, Lorg/threeten/bp/zone/ZoneRulesException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to load TZDB time-zone rules: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v2}, Lorg/threeten/bp/zone/ZoneRulesException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 177
    .end local v2    # "ex":Ljava/lang/Exception;
    .restart local v1    # "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/URL;>;"
    :cond_0
    return v3
.end method

.method private load(Ljava/net/URL;)Z
    .locals 4
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;,
            Lorg/threeten/bp/zone/ZoneRulesException;
        }
    .end annotation

    .prologue
    .line 190
    const/4 v1, 0x0

    .line 191
    .local v1, "updated":Z
    iget-object v2, p0, Lorg/threeten/bp/zone/TzdbZoneRulesProvider;->loadedUrls:Ljava/util/Set;

    invoke-virtual {p1}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 192
    const/4 v0, 0x0

    .line 194
    .local v0, "in":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    .line 195
    invoke-direct {p0, v0}, Lorg/threeten/bp/zone/TzdbZoneRulesProvider;->load(Ljava/io/InputStream;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    or-int/2addr v1, v2

    .line 197
    if-eqz v0, :cond_0

    .line 198
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 202
    .end local v0    # "in":Ljava/io/InputStream;
    :cond_0
    return v1

    .line 197
    .restart local v0    # "in":Ljava/io/InputStream;
    :catchall_0
    move-exception v2

    if-eqz v0, :cond_1

    .line 198
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_1
    throw v2
.end method

.method private loadData(Ljava/io/InputStream;)Ljava/lang/Iterable;
    .locals 21
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/lang/Iterable",
            "<",
            "Lorg/threeten/bp/zone/TzdbZoneRulesProvider$Version;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/StreamCorruptedException;
        }
    .end annotation

    .prologue
    .line 233
    new-instance v4, Ljava/io/DataInputStream;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 234
    .local v4, "dis":Ljava/io/DataInputStream;
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readByte()B

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_0

    .line 235
    new-instance v19, Ljava/io/StreamCorruptedException;

    const-string v20, "File format not recognised"

    invoke-direct/range {v19 .. v20}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 238
    :cond_0
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v5

    .line 239
    .local v5, "groupId":Ljava/lang/String;
    const-string v19, "TZDB"

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_1

    .line 240
    new-instance v19, Ljava/io/StreamCorruptedException;

    const-string v20, "File format not recognised"

    invoke-direct/range {v19 .. v20}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 243
    :cond_1
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readShort()S

    move-result v14

    .line 244
    .local v14, "versionCount":I
    new-array v13, v14, [Ljava/lang/String;

    .line 245
    .local v13, "versionArray":[Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v14, :cond_2

    .line 246
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v19

    aput-object v19, v13, v6

    .line 245
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 249
    :cond_2
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readShort()S

    move-result v9

    .line 250
    .local v9, "regionCount":I
    new-array v8, v9, [Ljava/lang/String;

    .line 251
    .local v8, "regionArray":[Ljava/lang/String;
    const/4 v6, 0x0

    :goto_1
    if-ge v6, v9, :cond_3

    .line 252
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v19

    aput-object v19, v8, v6

    .line 251
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 254
    :cond_3
    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/threeten/bp/zone/TzdbZoneRulesProvider;->regionIds:Ljava/util/List;

    .line 256
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readShort()S

    move-result v11

    .line 257
    .local v11, "ruleCount":I
    new-array v10, v11, [Ljava/lang/Object;

    .line 258
    .local v10, "ruleArray":[Ljava/lang/Object;
    const/4 v6, 0x0

    :goto_2
    if-ge v6, v11, :cond_4

    .line 259
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readShort()S

    move-result v19

    move/from16 v0, v19

    new-array v3, v0, [B

    .line 260
    .local v3, "bytes":[B
    invoke-virtual {v4, v3}, Ljava/io/DataInputStream;->readFully([B)V

    .line 261
    aput-object v3, v10, v6

    .line 258
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 263
    .end local v3    # "bytes":[B
    :cond_4
    new-instance v12, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-direct {v12, v10}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>([Ljava/lang/Object;)V

    .line 265
    .local v12, "ruleData":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Ljava/lang/Object;>;"
    new-instance v18, Ljava/util/HashSet;

    move-object/from16 v0, v18

    invoke-direct {v0, v14}, Ljava/util/HashSet;-><init>(I)V

    .line 266
    .local v18, "versionSet":Ljava/util/Set;, "Ljava/util/Set<Lorg/threeten/bp/zone/TzdbZoneRulesProvider$Version;>;"
    const/4 v6, 0x0

    :goto_3
    if-ge v6, v14, :cond_6

    .line 267
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readShort()S

    move-result v16

    .line 268
    .local v16, "versionRegionCount":I
    move/from16 v0, v16

    new-array v15, v0, [Ljava/lang/String;

    .line 269
    .local v15, "versionRegionArray":[Ljava/lang/String;
    move/from16 v0, v16

    new-array v0, v0, [S

    move-object/from16 v17, v0

    .line 270
    .local v17, "versionRulesArray":[S
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_4
    move/from16 v0, v16

    if-ge v7, v0, :cond_5

    .line 271
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readShort()S

    move-result v19

    aget-object v19, v8, v19

    aput-object v19, v15, v7

    .line 272
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readShort()S

    move-result v19

    aput-short v19, v17, v7

    .line 270
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 274
    :cond_5
    new-instance v19, Lorg/threeten/bp/zone/TzdbZoneRulesProvider$Version;

    aget-object v20, v13, v6

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v15, v2, v12}, Lorg/threeten/bp/zone/TzdbZoneRulesProvider$Version;-><init>(Ljava/lang/String;[Ljava/lang/String;[SLjava/util/concurrent/atomic/AtomicReferenceArray;)V

    invoke-interface/range {v18 .. v19}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 266
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 276
    .end local v7    # "j":I
    .end local v15    # "versionRegionArray":[Ljava/lang/String;
    .end local v16    # "versionRegionCount":I
    .end local v17    # "versionRulesArray":[S
    :cond_6
    return-object v18
.end method


# virtual methods
.method protected provideRules(Ljava/lang/String;Z)Lorg/threeten/bp/zone/ZoneRules;
    .locals 4
    .param p1, "zoneId"    # Ljava/lang/String;
    .param p2, "forCaching"    # Z

    .prologue
    .line 137
    const-string v1, "zoneId"

    invoke-static {p1, v1}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 138
    iget-object v1, p0, Lorg/threeten/bp/zone/TzdbZoneRulesProvider;->versions:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentNavigableMap;->lastEntry()Ljava/util/Map$Entry;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/threeten/bp/zone/TzdbZoneRulesProvider$Version;

    invoke-virtual {v1, p1}, Lorg/threeten/bp/zone/TzdbZoneRulesProvider$Version;->getRules(Ljava/lang/String;)Lorg/threeten/bp/zone/ZoneRules;

    move-result-object v0

    .line 139
    .local v0, "rules":Lorg/threeten/bp/zone/ZoneRules;
    if-nez v0, :cond_0

    .line 140
    new-instance v1, Lorg/threeten/bp/zone/ZoneRulesException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown time-zone ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/threeten/bp/zone/ZoneRulesException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 142
    :cond_0
    return-object v0
.end method

.method protected provideVersions(Ljava/lang/String;)Ljava/util/NavigableMap;
    .locals 5
    .param p1, "zoneId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/NavigableMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/threeten/bp/zone/ZoneRules;",
            ">;"
        }
    .end annotation

    .prologue
    .line 147
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    .line 148
    .local v1, "map":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Lorg/threeten/bp/zone/ZoneRules;>;"
    iget-object v4, p0, Lorg/threeten/bp/zone/TzdbZoneRulesProvider;->versions:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v4}, Ljava/util/concurrent/ConcurrentNavigableMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/threeten/bp/zone/TzdbZoneRulesProvider$Version;

    .line 149
    .local v3, "version":Lorg/threeten/bp/zone/TzdbZoneRulesProvider$Version;
    invoke-virtual {v3, p1}, Lorg/threeten/bp/zone/TzdbZoneRulesProvider$Version;->getRules(Ljava/lang/String;)Lorg/threeten/bp/zone/ZoneRules;

    move-result-object v2

    .line 150
    .local v2, "rules":Lorg/threeten/bp/zone/ZoneRules;
    if-eqz v2, :cond_0

    .line 151
    # getter for: Lorg/threeten/bp/zone/TzdbZoneRulesProvider$Version;->versionId:Ljava/lang/String;
    invoke-static {v3}, Lorg/threeten/bp/zone/TzdbZoneRulesProvider$Version;->access$000(Lorg/threeten/bp/zone/TzdbZoneRulesProvider$Version;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 154
    .end local v2    # "rules":Lorg/threeten/bp/zone/ZoneRules;
    .end local v3    # "version":Lorg/threeten/bp/zone/TzdbZoneRulesProvider$Version;
    :cond_1
    return-object v1
.end method

.method protected provideZoneIds()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 132
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lorg/threeten/bp/zone/TzdbZoneRulesProvider;->regionIds:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 281
    const-string v0, "TZDB"

    return-object v0
.end method
