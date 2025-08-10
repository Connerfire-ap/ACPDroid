.class public final Lcom/google/android/gms/internal/zzcky;
.super Lcom/google/android/gms/internal/zzfhe;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzfhe<",
        "Lcom/google/android/gms/internal/zzcky;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile zzjil:[Lcom/google/android/gms/internal/zzcky;


# instance fields
.field public count:Ljava/lang/Integer;

.field public name:Ljava/lang/String;

.field public zzjim:[Lcom/google/android/gms/internal/zzckz;

.field public zzjin:Ljava/lang/Long;

.field public zzjio:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzfhe;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/zzckz;->zzbaw()[Lcom/google/android/gms/internal/zzckz;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcky;->zzjim:[Lcom/google/android/gms/internal/zzckz;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcky;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcky;->zzjin:Ljava/lang/Long;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcky;->zzjio:Ljava/lang/Long;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcky;->count:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcky;->zzpgy:Lcom/google/android/gms/internal/zzfhg;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzcky;->zzpai:I

    return-void
.end method

.method public static zzbav()[Lcom/google/android/gms/internal/zzcky;
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/zzcky;->zzjil:[Lcom/google/android/gms/internal/zzcky;

    if-nez v0, :cond_1

    sget-object v0, Lcom/google/android/gms/internal/zzfhi;->zzphg:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/zzcky;->zzjil:[Lcom/google/android/gms/internal/zzcky;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/android/gms/internal/zzcky;

    sput-object v1, Lcom/google/android/gms/internal/zzcky;->zzjil:[Lcom/google/android/gms/internal/zzcky;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/google/android/gms/internal/zzcky;->zzjil:[Lcom/google/android/gms/internal/zzcky;

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/zzcky;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/zzcky;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcky;->zzjim:[Lcom/google/android/gms/internal/zzckz;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzcky;->zzjim:[Lcom/google/android/gms/internal/zzckz;

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/zzfhi;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/zzcky;->name:Ljava/lang/String;

    if-nez v1, :cond_3

    iget-object v1, p1, Lcom/google/android/gms/internal/zzcky;->name:Ljava/lang/String;

    if-eqz v1, :cond_4

    return v2

    :cond_3
    iget-object v3, p1, Lcom/google/android/gms/internal/zzcky;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/zzcky;->zzjin:Ljava/lang/Long;

    if-nez v1, :cond_5

    iget-object v1, p1, Lcom/google/android/gms/internal/zzcky;->zzjin:Ljava/lang/Long;

    if-eqz v1, :cond_6

    return v2

    :cond_5
    iget-object v3, p1, Lcom/google/android/gms/internal/zzcky;->zzjin:Ljava/lang/Long;

    invoke-virtual {v1, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/google/android/gms/internal/zzcky;->zzjio:Ljava/lang/Long;

    if-nez v1, :cond_7

    iget-object v1, p1, Lcom/google/android/gms/internal/zzcky;->zzjio:Ljava/lang/Long;

    if-eqz v1, :cond_8

    return v2

    :cond_7
    iget-object v3, p1, Lcom/google/android/gms/internal/zzcky;->zzjio:Ljava/lang/Long;

    invoke-virtual {v1, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/google/android/gms/internal/zzcky;->count:Ljava/lang/Integer;

    if-nez v1, :cond_9

    iget-object v1, p1, Lcom/google/android/gms/internal/zzcky;->count:Ljava/lang/Integer;

    if-eqz v1, :cond_a

    return v2

    :cond_9
    iget-object v3, p1, Lcom/google/android/gms/internal/zzcky;->count:Ljava/lang/Integer;

    invoke-virtual {v1, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/google/android/gms/internal/zzcky;->zzpgy:Lcom/google/android/gms/internal/zzfhg;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcky;->zzpgy:Lcom/google/android/gms/internal/zzfhg;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzfhg;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b

    goto :goto_0

    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcky;->zzpgy:Lcom/google/android/gms/internal/zzfhg;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzcky;->zzpgy:Lcom/google/android/gms/internal/zzfhg;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzfhg;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_c
    :goto_0
    iget-object v1, p1, Lcom/google/android/gms/internal/zzcky;->zzpgy:Lcom/google/android/gms/internal/zzfhg;

    if-eqz v1, :cond_e

    iget-object p1, p1, Lcom/google/android/gms/internal/zzcky;->zzpgy:Lcom/google/android/gms/internal/zzfhg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzfhg;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_d

    goto :goto_1

    :cond_d
    return v2

    :cond_e
    :goto_1
    return v0
.end method

.method public final hashCode()I
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcky;->zzjim:[Lcom/google/android/gms/internal/zzckz;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzfhi;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcky;->name:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcky;->zzjin:Ljava/lang/Long;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Long;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcky;->zzjio:Ljava/lang/Long;

    if-nez v1, :cond_2

    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Long;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcky;->count:Ljava/lang/Integer;

    if-nez v1, :cond_3

    const/4 v1, 0x0

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcky;->zzpgy:Lcom/google/android/gms/internal/zzfhg;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcky;->zzpgy:Lcom/google/android/gms/internal/zzfhg;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzfhg;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_4

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/zzcky;->zzpgy:Lcom/google/android/gms/internal/zzfhg;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzfhg;->hashCode()I

    move-result v2

    :cond_5
    :goto_4
    add-int/2addr v0, v2

    return v0
.end method

.method public final synthetic zza(Lcom/google/android/gms/internal/zzfhb;)Lcom/google/android/gms/internal/zzfhk;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzfhb;->zzcts()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/zzfhe;->zza(Lcom/google/android/gms/internal/zzfhb;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :sswitch_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzfhb;->zzcuh()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcky;->count:Ljava/lang/Integer;

    goto :goto_0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzfhb;->zzcum()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcky;->zzjio:Ljava/lang/Long;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzfhb;->zzcum()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcky;->zzjin:Ljava/lang/Long;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzfhb;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcky;->name:Ljava/lang/String;

    goto :goto_0

    :sswitch_4
    const/16 v0, 0xa

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzfhn;->zzb(Lcom/google/android/gms/internal/zzfhb;I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcky;->zzjim:[Lcom/google/android/gms/internal/zzckz;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    array-length v3, v1

    :goto_1
    add-int/2addr v0, v3

    new-array v4, v0, [Lcom/google/android/gms/internal/zzckz;

    if-eqz v3, :cond_2

    invoke-static {v1, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    :goto_2
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_3

    new-instance v1, Lcom/google/android/gms/internal/zzckz;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzckz;-><init>()V

    aput-object v1, v4, v3

    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/zzfhb;->zza(Lcom/google/android/gms/internal/zzfhk;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzfhb;->zzcts()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    new-instance v0, Lcom/google/android/gms/internal/zzckz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzckz;-><init>()V

    aput-object v0, v4, v3

    aget-object v0, v4, v3

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzfhb;->zza(Lcom/google/android/gms/internal/zzfhk;)V

    iput-object v4, p0, Lcom/google/android/gms/internal/zzcky;->zzjim:[Lcom/google/android/gms/internal/zzckz;

    goto :goto_0

    :sswitch_5
    return-object p0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_5
        0xa -> :sswitch_4
        0x12 -> :sswitch_3
        0x18 -> :sswitch_2
        0x20 -> :sswitch_1
        0x28 -> :sswitch_0
    .end sparse-switch
.end method

.method public final zza(Lcom/google/android/gms/internal/zzfhc;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcky;->zzjim:[Lcom/google/android/gms/internal/zzckz;

    if-eqz v0, :cond_1

    array-length v0, v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzcky;->zzjim:[Lcom/google/android/gms/internal/zzckz;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/internal/zzfhc;->zza(ILcom/google/android/gms/internal/zzfhk;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcky;->name:Ljava/lang/String;

    if-eqz v0, :cond_2

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/zzfhc;->zzn(ILjava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcky;->zzjin:Ljava/lang/Long;

    if-eqz v0, :cond_3

    const/4 v1, 0x3

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/android/gms/internal/zzfhc;->zzf(IJ)V

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcky;->zzjio:Ljava/lang/Long;

    if-eqz v0, :cond_4

    const/4 v1, 0x4

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/android/gms/internal/zzfhc;->zzf(IJ)V

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcky;->count:Ljava/lang/Integer;

    if-eqz v0, :cond_5

    const/4 v1, 0x5

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/zzfhc;->zzaa(II)V

    :cond_5
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/zzfhe;->zza(Lcom/google/android/gms/internal/zzfhc;)V

    return-void
.end method

.method protected final zzo()I
    .locals 5

    invoke-super {p0}, Lcom/google/android/gms/internal/zzfhe;->zzo()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcky;->zzjim:[Lcom/google/android/gms/internal/zzckz;

    if-eqz v1, :cond_1

    array-length v1, v1

    if-lez v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/zzcky;->zzjim:[Lcom/google/android/gms/internal/zzckz;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    const/4 v3, 0x1

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/zzfhc;->zzb(ILcom/google/android/gms/internal/zzfhk;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzcky;->name:Ljava/lang/String;

    if-eqz v1, :cond_2

    const/4 v2, 0x2

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/zzfhc;->zzo(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/zzcky;->zzjin:Ljava/lang/Long;

    if-eqz v1, :cond_3

    const/4 v2, 0x3

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/zzfhc;->zzc(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/zzcky;->zzjio:Ljava/lang/Long;

    if-eqz v1, :cond_4

    const/4 v2, 0x4

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/zzfhc;->zzc(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/zzcky;->count:Ljava/lang/Integer;

    if-eqz v1, :cond_5

    const/4 v2, 0x5

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/zzfhc;->zzad(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    return v0
.end method
