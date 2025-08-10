.class public final Lcom/google/android/gms/internal/zzfgf;
.super Lcom/google/android/gms/internal/zzfee;

# interfaces
.implements Lcom/google/android/gms/internal/zzffk;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzfgf$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzfee<",
        "Lcom/google/android/gms/internal/zzfgf;",
        "Lcom/google/android/gms/internal/zzfgf$zza;",
        ">;",
        "Lcom/google/android/gms/internal/zzffk;"
    }
.end annotation


# static fields
.field private static volatile zzbas:Lcom/google/android/gms/internal/zzffm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzffm<",
            "Lcom/google/android/gms/internal/zzfgf;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzpej:Lcom/google/android/gms/internal/zzfgf;


# instance fields
.field private zzpeh:J

.field private zzpei:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/zzfgf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzfgf;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzfgf;->zzpej:Lcom/google/android/gms/internal/zzfgf;

    sget v1, Lcom/google/android/gms/internal/zzfem;->zzpcf:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/zzfee;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzfee;->zzpbs:Lcom/google/android/gms/internal/zzfgi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfgi;->zzbim()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzfee;-><init>()V

    return-void
.end method

.method private final setNanos(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/zzfgf;->zzpei:I

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzfgf;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzfgf;->setNanos(I)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzfgf;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzfgf;->zzde(J)V

    return-void
.end method

.method public static zzcwq()Lcom/google/android/gms/internal/zzfgf$zza;
    .locals 3

    sget-object v0, Lcom/google/android/gms/internal/zzfgf;->zzpej:Lcom/google/android/gms/internal/zzfgf;

    sget v1, Lcom/google/android/gms/internal/zzfem;->zzpch:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/zzfee;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzfef;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzfef;->zza(Lcom/google/android/gms/internal/zzfee;)Lcom/google/android/gms/internal/zzfef;

    check-cast v1, Lcom/google/android/gms/internal/zzfef;

    check-cast v1, Lcom/google/android/gms/internal/zzfgf$zza;

    return-object v1
.end method

.method public static zzcwr()Lcom/google/android/gms/internal/zzfgf;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzfgf;->zzpej:Lcom/google/android/gms/internal/zzfgf;

    return-object v0
.end method

.method static synthetic zzcws()Lcom/google/android/gms/internal/zzfgf;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzfgf;->zzpej:Lcom/google/android/gms/internal/zzfgf;

    return-object v0
.end method

.method private final zzde(J)V
    .locals 0

    iput-wide p1, p0, Lcom/google/android/gms/internal/zzfgf;->zzpeh:J

    return-void
.end method


# virtual methods
.method public final getNanos()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzfgf;->zzpei:I

    return v0
.end method

.method public final getSeconds()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzfgf;->zzpeh:J

    return-wide v0
.end method

.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    sget-object v0, Lcom/google/android/gms/internal/zzfgg;->zzbaq:[I

    const/4 v1, 0x1

    sub-int/2addr p1, v1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    sget-object p1, Lcom/google/android/gms/internal/zzfgf;->zzbas:Lcom/google/android/gms/internal/zzffm;

    if-nez p1, :cond_1

    const-class p1, Lcom/google/android/gms/internal/zzfgf;

    monitor-enter p1

    :try_start_0
    sget-object p2, Lcom/google/android/gms/internal/zzfgf;->zzbas:Lcom/google/android/gms/internal/zzffm;

    if-nez p2, :cond_0

    new-instance p2, Lcom/google/android/gms/internal/zzfeg;

    sget-object p3, Lcom/google/android/gms/internal/zzfgf;->zzpej:Lcom/google/android/gms/internal/zzfgf;

    invoke-direct {p2, p3}, Lcom/google/android/gms/internal/zzfeg;-><init>(Lcom/google/android/gms/internal/zzfee;)V

    sput-object p2, Lcom/google/android/gms/internal/zzfgf;->zzbas:Lcom/google/android/gms/internal/zzffm;

    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    :cond_1
    :goto_0
    sget-object p1, Lcom/google/android/gms/internal/zzfgf;->zzbas:Lcom/google/android/gms/internal/zzffm;

    return-object p1

    :pswitch_1
    check-cast p2, Lcom/google/android/gms/internal/zzfdq;

    check-cast p3, Lcom/google/android/gms/internal/zzfea;

    if-eqz p3, :cond_6

    const/4 p1, 0x0

    :cond_2
    :goto_1
    if-nez p1, :cond_5

    :try_start_1
    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzfdq;->zzcts()I

    move-result p3

    sparse-switch p3, :sswitch_data_0

    and-int/lit8 v0, p3, 0x7

    const/4 v3, 0x4

    if-ne v0, v3, :cond_3

    const/4 p3, 0x0

    goto :goto_3

    :sswitch_0
    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzfdq;->zzctv()I

    move-result p3

    iput p3, p0, Lcom/google/android/gms/internal/zzfgf;->zzpei:I

    goto :goto_1

    :sswitch_1
    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzfdq;->zzctu()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/android/gms/internal/zzfgf;->zzpeh:J

    goto :goto_1

    :goto_2
    :sswitch_2
    const/4 p1, 0x1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfee;->zzpbs:Lcom/google/android/gms/internal/zzfgi;

    invoke-static {}, Lcom/google/android/gms/internal/zzfgi;->zzcwu()Lcom/google/android/gms/internal/zzfgi;

    move-result-object v3

    if-ne v0, v3, :cond_4

    invoke-static {}, Lcom/google/android/gms/internal/zzfgi;->zzcwv()Lcom/google/android/gms/internal/zzfgi;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfee;->zzpbs:Lcom/google/android/gms/internal/zzfgi;

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfee;->zzpbs:Lcom/google/android/gms/internal/zzfgi;

    invoke-virtual {v0, p3, p2}, Lcom/google/android/gms/internal/zzfgi;->zzb(ILcom/google/android/gms/internal/zzfdq;)Z

    move-result p3
    :try_end_1
    .catch Lcom/google/android/gms/internal/zzfew; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_3
    if-nez p3, :cond_2

    goto :goto_2

    :catchall_1
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Lcom/google/android/gms/internal/zzfew;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/google/android/gms/internal/zzfew;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/google/android/gms/internal/zzfew;->zzh(Lcom/google/android/gms/internal/zzffi;)Lcom/google/android/gms/internal/zzfew;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/zzfew;->zzh(Lcom/google/android/gms/internal/zzffi;)Lcom/google/android/gms/internal/zzfew;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_4
    throw p1

    :cond_5
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/zzfgf;->zzpej:Lcom/google/android/gms/internal/zzfgf;

    return-object p1

    :cond_6
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    :pswitch_3
    check-cast p2, Lcom/google/android/gms/internal/zzfen;

    check-cast p3, Lcom/google/android/gms/internal/zzfgf;

    iget-wide v5, p0, Lcom/google/android/gms/internal/zzfgf;->zzpeh:J

    const-wide/16 v3, 0x0

    cmp-long p1, v5, v3

    if-eqz p1, :cond_7

    const/4 p1, 0x1

    goto :goto_5

    :cond_7
    const/4 p1, 0x0

    :goto_5
    iget-wide v8, p3, Lcom/google/android/gms/internal/zzfgf;->zzpeh:J

    cmp-long v0, v8, v3

    if-eqz v0, :cond_8

    const/4 v7, 0x1

    goto :goto_6

    :cond_8
    const/4 v7, 0x0

    :goto_6
    move-object v3, p2

    move v4, p1

    invoke-interface/range {v3 .. v9}, Lcom/google/android/gms/internal/zzfen;->zza(ZJZJ)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/android/gms/internal/zzfgf;->zzpeh:J

    iget p1, p0, Lcom/google/android/gms/internal/zzfgf;->zzpei:I

    if-eqz p1, :cond_9

    const/4 v0, 0x1

    goto :goto_7

    :cond_9
    const/4 v0, 0x0

    :goto_7
    iget p3, p3, Lcom/google/android/gms/internal/zzfgf;->zzpei:I

    if-eqz p3, :cond_a

    goto :goto_8

    :cond_a
    const/4 v1, 0x0

    :goto_8
    invoke-interface {p2, v0, p1, v1, p3}, Lcom/google/android/gms/internal/zzfen;->zza(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/zzfgf;->zzpei:I

    return-object p0

    :pswitch_4
    new-instance p1, Lcom/google/android/gms/internal/zzfgf$zza;

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/zzfgf$zza;-><init>(Lcom/google/android/gms/internal/zzfgg;)V

    return-object p1

    :pswitch_5
    return-object v0

    :pswitch_6
    sget-object p1, Lcom/google/android/gms/internal/zzfgf;->zzpej:Lcom/google/android/gms/internal/zzfgf;

    return-object p1

    :pswitch_7
    new-instance p1, Lcom/google/android/gms/internal/zzfgf;

    invoke-direct {p1}, Lcom/google/android/gms/internal/zzfgf;-><init>()V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x8 -> :sswitch_1
        0x10 -> :sswitch_0
    .end sparse-switch
.end method

.method public final zza(Lcom/google/android/gms/internal/zzfdv;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzfgf;->zzpeh:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/android/gms/internal/zzfdv;->zza(IJ)V

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/zzfgf;->zzpei:I

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/zzfdv;->zzaa(II)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfgf;->zzpbs:Lcom/google/android/gms/internal/zzfgi;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzfgi;->zza(Lcom/google/android/gms/internal/zzfdv;)V

    return-void
.end method

.method public final zzhl()I
    .locals 6

    iget v0, p0, Lcom/google/android/gms/internal/zzfgf;->zzpbt:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/zzfgf;->zzpeh:J

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    cmp-long v5, v0, v2

    if-eqz v5, :cond_1

    const/4 v2, 0x1

    invoke-static {v2, v0, v1}, Lcom/google/android/gms/internal/zzfdv;->zzc(IJ)I

    move-result v0

    add-int/2addr v4, v0

    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/zzfgf;->zzpei:I

    if-eqz v0, :cond_2

    const/4 v1, 0x2

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzfdv;->zzad(II)I

    move-result v0

    add-int/2addr v4, v0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfgf;->zzpbs:Lcom/google/android/gms/internal/zzfgi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfgi;->zzhl()I

    move-result v0

    add-int/2addr v4, v0

    iput v4, p0, Lcom/google/android/gms/internal/zzfgf;->zzpbt:I

    return v4
.end method
