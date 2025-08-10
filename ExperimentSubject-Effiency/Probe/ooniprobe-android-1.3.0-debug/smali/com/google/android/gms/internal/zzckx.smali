.class public final Lcom/google/android/gms/internal/zzckx;
.super Lcom/google/android/gms/internal/zzfhe;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzfhe<",
        "Lcom/google/android/gms/internal/zzckx;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile zzjih:[Lcom/google/android/gms/internal/zzckx;


# instance fields
.field public zzjgx:Ljava/lang/Integer;

.field public zzjii:Lcom/google/android/gms/internal/zzclc;

.field public zzjij:Lcom/google/android/gms/internal/zzclc;

.field public zzjik:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzfhe;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzckx;->zzjgx:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzckx;->zzjii:Lcom/google/android/gms/internal/zzclc;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzckx;->zzjij:Lcom/google/android/gms/internal/zzclc;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzckx;->zzjik:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzckx;->zzpgy:Lcom/google/android/gms/internal/zzfhg;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzckx;->zzpai:I

    return-void
.end method

.method public static zzbau()[Lcom/google/android/gms/internal/zzckx;
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/zzckx;->zzjih:[Lcom/google/android/gms/internal/zzckx;

    if-nez v0, :cond_1

    sget-object v0, Lcom/google/android/gms/internal/zzfhi;->zzphg:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/zzckx;->zzjih:[Lcom/google/android/gms/internal/zzckx;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/android/gms/internal/zzckx;

    sput-object v1, Lcom/google/android/gms/internal/zzckx;->zzjih:[Lcom/google/android/gms/internal/zzckx;

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
    sget-object v0, Lcom/google/android/gms/internal/zzckx;->zzjih:[Lcom/google/android/gms/internal/zzckx;

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/zzckx;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/zzckx;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzckx;->zzjgx:Ljava/lang/Integer;

    if-nez v1, :cond_2

    iget-object v1, p1, Lcom/google/android/gms/internal/zzckx;->zzjgx:Ljava/lang/Integer;

    if-eqz v1, :cond_3

    return v2

    :cond_2
    iget-object v3, p1, Lcom/google/android/gms/internal/zzckx;->zzjgx:Ljava/lang/Integer;

    invoke-virtual {v1, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/zzckx;->zzjii:Lcom/google/android/gms/internal/zzclc;

    if-nez v1, :cond_4

    iget-object v1, p1, Lcom/google/android/gms/internal/zzckx;->zzjii:Lcom/google/android/gms/internal/zzclc;

    if-eqz v1, :cond_5

    return v2

    :cond_4
    iget-object v3, p1, Lcom/google/android/gms/internal/zzckx;->zzjii:Lcom/google/android/gms/internal/zzclc;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/zzclc;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/internal/zzckx;->zzjij:Lcom/google/android/gms/internal/zzclc;

    if-nez v1, :cond_6

    iget-object v1, p1, Lcom/google/android/gms/internal/zzckx;->zzjij:Lcom/google/android/gms/internal/zzclc;

    if-eqz v1, :cond_7

    return v2

    :cond_6
    iget-object v3, p1, Lcom/google/android/gms/internal/zzckx;->zzjij:Lcom/google/android/gms/internal/zzclc;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/zzclc;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/google/android/gms/internal/zzckx;->zzjik:Ljava/lang/Boolean;

    if-nez v1, :cond_8

    iget-object v1, p1, Lcom/google/android/gms/internal/zzckx;->zzjik:Ljava/lang/Boolean;

    if-eqz v1, :cond_9

    return v2

    :cond_8
    iget-object v3, p1, Lcom/google/android/gms/internal/zzckx;->zzjik:Ljava/lang/Boolean;

    invoke-virtual {v1, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/google/android/gms/internal/zzckx;->zzpgy:Lcom/google/android/gms/internal/zzfhg;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/google/android/gms/internal/zzckx;->zzpgy:Lcom/google/android/gms/internal/zzfhg;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzfhg;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_0

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/zzckx;->zzpgy:Lcom/google/android/gms/internal/zzfhg;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzckx;->zzpgy:Lcom/google/android/gms/internal/zzfhg;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzfhg;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_b
    :goto_0
    iget-object v1, p1, Lcom/google/android/gms/internal/zzckx;->zzpgy:Lcom/google/android/gms/internal/zzfhg;

    if-eqz v1, :cond_d

    iget-object p1, p1, Lcom/google/android/gms/internal/zzckx;->zzpgy:Lcom/google/android/gms/internal/zzfhg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzfhg;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_c

    goto :goto_1

    :cond_c
    return v2

    :cond_d
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

    iget-object v1, p0, Lcom/google/android/gms/internal/zzckx;->zzjgx:Ljava/lang/Integer;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzckx;->zzjii:Lcom/google/android/gms/internal/zzclc;

    mul-int/lit8 v0, v0, 0x1f

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzclc;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzckx;->zzjij:Lcom/google/android/gms/internal/zzclc;

    mul-int/lit8 v0, v0, 0x1f

    if-nez v1, :cond_2

    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzclc;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/zzckx;->zzjik:Ljava/lang/Boolean;

    if-nez v1, :cond_3

    const/4 v1, 0x0

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/zzckx;->zzpgy:Lcom/google/android/gms/internal/zzfhg;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/google/android/gms/internal/zzckx;->zzpgy:Lcom/google/android/gms/internal/zzfhg;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzfhg;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_4

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/zzckx;->zzpgy:Lcom/google/android/gms/internal/zzfhg;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzfhg;->hashCode()I

    move-result v2

    :cond_5
    :goto_4
    add-int/2addr v0, v2

    return v0
.end method

.method public final synthetic zza(Lcom/google/android/gms/internal/zzfhb;)Lcom/google/android/gms/internal/zzfhk;
    .locals 1
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
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzfhb;->zzcty()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzckx;->zzjik:Ljava/lang/Boolean;

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzckx;->zzjij:Lcom/google/android/gms/internal/zzclc;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/zzclc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzclc;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzckx;->zzjij:Lcom/google/android/gms/internal/zzclc;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzckx;->zzjij:Lcom/google/android/gms/internal/zzclc;

    goto :goto_1

    :sswitch_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzckx;->zzjii:Lcom/google/android/gms/internal/zzclc;

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/zzclc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzclc;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzckx;->zzjii:Lcom/google/android/gms/internal/zzclc;

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzckx;->zzjii:Lcom/google/android/gms/internal/zzclc;

    :goto_1
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzfhb;->zza(Lcom/google/android/gms/internal/zzfhk;)V

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzfhb;->zzcuh()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzckx;->zzjgx:Ljava/lang/Integer;

    goto :goto_0

    :sswitch_4
    return-object p0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_4
        0x8 -> :sswitch_3
        0x12 -> :sswitch_2
        0x1a -> :sswitch_1
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method public final zza(Lcom/google/android/gms/internal/zzfhc;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzckx;->zzjgx:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/zzfhc;->zzaa(II)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzckx;->zzjii:Lcom/google/android/gms/internal/zzclc;

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/zzfhc;->zza(ILcom/google/android/gms/internal/zzfhk;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzckx;->zzjij:Lcom/google/android/gms/internal/zzclc;

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/zzfhc;->zza(ILcom/google/android/gms/internal/zzfhk;)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzckx;->zzjik:Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    const/4 v1, 0x4

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/zzfhc;->zzl(IZ)V

    :cond_3
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/zzfhe;->zza(Lcom/google/android/gms/internal/zzfhc;)V

    return-void
.end method

.method protected final zzo()I
    .locals 4

    invoke-super {p0}, Lcom/google/android/gms/internal/zzfhe;->zzo()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzckx;->zzjgx:Ljava/lang/Integer;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/zzfhc;->zzad(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzckx;->zzjii:Lcom/google/android/gms/internal/zzclc;

    if-eqz v1, :cond_1

    const/4 v3, 0x2

    invoke-static {v3, v1}, Lcom/google/android/gms/internal/zzfhc;->zzb(ILcom/google/android/gms/internal/zzfhk;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzckx;->zzjij:Lcom/google/android/gms/internal/zzclc;

    if-eqz v1, :cond_2

    const/4 v3, 0x3

    invoke-static {v3, v1}, Lcom/google/android/gms/internal/zzfhc;->zzb(ILcom/google/android/gms/internal/zzfhk;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/zzckx;->zzjik:Ljava/lang/Boolean;

    if-eqz v1, :cond_3

    const/4 v3, 0x4

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    invoke-static {v3}, Lcom/google/android/gms/internal/zzfhc;->zzkw(I)I

    move-result v1

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    :cond_3
    return v0
.end method
