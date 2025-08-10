.class public final Lcom/google/android/gms/internal/zzal;
.super Ljava/lang/Object;


# direct methods
.method public static zza(Ljava/util/Map;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "Content-Type"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_1

    const-string v0, ";"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    const/4 v1, 0x1

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    const/4 v3, 0x0

    aget-object v3, v2, v3

    const-string v4, "charset"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    aget-object p0, v2, v0

    return-object p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string p0, "ISO-8859-1"

    return-object p0
.end method

.method public static zzb(Lcom/google/android/gms/internal/zzn;)Lcom/google/android/gms/internal/zzc;
    .locals 23

    move-object/from16 v1, p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, v1, Lcom/google/android/gms/internal/zzn;->zzy:Ljava/util/Map;

    const-string v0, "Date"

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-wide/16 v5, 0x0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzal;->zzf(Ljava/lang/String;)J

    move-result-wide v7

    goto :goto_0

    :cond_0
    move-wide v7, v5

    :goto_0
    const-string v0, "Cache-Control"

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v10, 0x0

    if-eqz v0, :cond_8

    const-string v11, ","

    invoke-virtual {v0, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    move-wide v13, v5

    move-wide v15, v13

    const/4 v12, 0x0

    :goto_1
    array-length v0, v11

    if-ge v10, v0, :cond_7

    aget-object v0, v11, v10

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v9, "no-cache"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    const-string v9, "no-store"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    goto :goto_3

    :cond_1
    const-string v9, "max-age="

    invoke-virtual {v0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    const/16 v9, 0x8

    :try_start_0
    invoke-virtual {v0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_2
    const-string v9, "stale-while-revalidate="

    invoke-virtual {v0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    const/16 v9, 0x17

    :try_start_1
    invoke-virtual {v0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v15
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :cond_3
    const-string v9, "must-revalidate"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    const-string v9, "proxy-revalidate"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    const/4 v12, 0x1

    :cond_5
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_6
    :goto_3
    const/4 v0, 0x0

    return-object v0

    :cond_7
    move v10, v12

    const/4 v9, 0x1

    goto :goto_4

    :cond_8
    move-wide v13, v5

    move-wide v15, v13

    const/4 v9, 0x0

    :goto_4
    const-string v0, "Expires"

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_9

    invoke-static {v0}, Lcom/google/android/gms/internal/zzal;->zzf(Ljava/lang/String;)J

    move-result-wide v11

    goto :goto_5

    :cond_9
    move-wide v11, v5

    :goto_5
    const-string v0, "Last-Modified"

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_a

    invoke-static {v0}, Lcom/google/android/gms/internal/zzal;->zzf(Ljava/lang/String;)J

    move-result-wide v17

    move-wide/from16 v19, v17

    goto :goto_6

    :cond_a
    move-wide/from16 v19, v5

    :goto_6
    const-string v0, "ETag"

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v9, :cond_c

    const-wide/16 v5, 0x3e8

    mul-long v13, v13, v5

    add-long/2addr v2, v13

    if-eqz v10, :cond_b

    move-wide v5, v2

    goto :goto_7

    :cond_b
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->signum(J)I

    mul-long v15, v15, v5

    add-long/2addr v15, v2

    move-wide v5, v15

    :goto_7
    move-wide/from16 v21, v2

    move-wide v2, v5

    move-wide/from16 v5, v21

    goto :goto_8

    :cond_c
    cmp-long v9, v7, v5

    if-lez v9, :cond_d

    cmp-long v9, v11, v7

    if-ltz v9, :cond_d

    sub-long/2addr v11, v7

    add-long v5, v2, v11

    :cond_d
    move-wide v2, v5

    :goto_8
    new-instance v9, Lcom/google/android/gms/internal/zzc;

    invoke-direct {v9}, Lcom/google/android/gms/internal/zzc;-><init>()V

    iget-object v1, v1, Lcom/google/android/gms/internal/zzn;->data:[B

    iput-object v1, v9, Lcom/google/android/gms/internal/zzc;->data:[B

    iput-object v0, v9, Lcom/google/android/gms/internal/zzc;->zza:Ljava/lang/String;

    iput-wide v5, v9, Lcom/google/android/gms/internal/zzc;->zze:J

    iput-wide v2, v9, Lcom/google/android/gms/internal/zzc;->zzd:J

    iput-wide v7, v9, Lcom/google/android/gms/internal/zzc;->zzb:J

    move-wide/from16 v5, v19

    iput-wide v5, v9, Lcom/google/android/gms/internal/zzc;->zzc:J

    iput-object v4, v9, Lcom/google/android/gms/internal/zzc;->zzf:Ljava/util/Map;

    return-object v9
.end method

.method private static zzf(Ljava/lang/String;)J
    .locals 2

    :try_start_0
    invoke-static {p0}, Lorg/apache/http/impl/cookie/DateUtils;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0
    :try_end_0
    .catch Lorg/apache/http/impl/cookie/DateParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception p0

    const-wide/16 v0, 0x0

    return-wide v0
.end method
