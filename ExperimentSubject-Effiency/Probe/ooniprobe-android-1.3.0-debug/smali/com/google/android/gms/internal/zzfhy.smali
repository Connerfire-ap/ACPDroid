.class public final Lcom/google/android/gms/internal/zzfhy;
.super Lcom/google/android/gms/internal/zzfee;

# interfaces
.implements Lcom/google/android/gms/internal/zzffk;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzfhy$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzfee<",
        "Lcom/google/android/gms/internal/zzfhy;",
        "Lcom/google/android/gms/internal/zzfhy$zza;",
        ">;",
        "Lcom/google/android/gms/internal/zzffk;"
    }
.end annotation


# static fields
.field private static volatile zzbas:Lcom/google/android/gms/internal/zzffm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzffm<",
            "Lcom/google/android/gms/internal/zzfhy;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzpjj:Lcom/google/android/gms/internal/zzfhy;


# instance fields
.field private zzltg:I

.field private zzpjg:I

.field private zzpjh:Ljava/lang/String;

.field private zzpji:Lcom/google/android/gms/internal/zzfev;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzfev<",
            "Lcom/google/android/gms/internal/zzfde;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/zzfhy;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzfhy;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzfhy;->zzpjj:Lcom/google/android/gms/internal/zzfhy;

    sget v1, Lcom/google/android/gms/internal/zzfem;->zzpcf:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/zzfee;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzfee;->zzpbs:Lcom/google/android/gms/internal/zzfgi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfgi;->zzbim()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzfee;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfhy;->zzpjh:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/internal/zzfhy;->zzcvf()Lcom/google/android/gms/internal/zzfev;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfhy;->zzpji:Lcom/google/android/gms/internal/zzfev;

    return-void
.end method

.method public static zzcxo()Lcom/google/android/gms/internal/zzfhy;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzfhy;->zzpjj:Lcom/google/android/gms/internal/zzfhy;

    return-object v0
.end method

.method static synthetic zzcxp()Lcom/google/android/gms/internal/zzfhy;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzfhy;->zzpjj:Lcom/google/android/gms/internal/zzfhy;

    return-object v0
.end method


# virtual methods
.method public final getCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzfhy;->zzpjg:I

    return v0
.end method

.method public final getMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfhy;->zzpjh:Ljava/lang/String;

    return-object v0
.end method

.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Lcom/google/android/gms/internal/zzfhz;->zzbaq:[I

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
    sget-object p1, Lcom/google/android/gms/internal/zzfhy;->zzbas:Lcom/google/android/gms/internal/zzffm;

    if-nez p1, :cond_1

    const-class p1, Lcom/google/android/gms/internal/zzfhy;

    monitor-enter p1

    :try_start_0
    sget-object p2, Lcom/google/android/gms/internal/zzfhy;->zzbas:Lcom/google/android/gms/internal/zzffm;

    if-nez p2, :cond_0

    new-instance p2, Lcom/google/android/gms/internal/zzfeg;

    sget-object p3, Lcom/google/android/gms/internal/zzfhy;->zzpjj:Lcom/google/android/gms/internal/zzfhy;

    invoke-direct {p2, p3}, Lcom/google/android/gms/internal/zzfeg;-><init>(Lcom/google/android/gms/internal/zzfee;)V

    sput-object p2, Lcom/google/android/gms/internal/zzfhy;->zzbas:Lcom/google/android/gms/internal/zzffm;

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
    sget-object p1, Lcom/google/android/gms/internal/zzfhy;->zzbas:Lcom/google/android/gms/internal/zzffm;

    return-object p1

    :pswitch_1
    check-cast p2, Lcom/google/android/gms/internal/zzfdq;

    check-cast p3, Lcom/google/android/gms/internal/zzfea;

    if-eqz p3, :cond_6

    :cond_2
    :goto_1
    if-nez v2, :cond_5

    :try_start_1
    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzfdq;->zzcts()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzfee;->zza(ILcom/google/android/gms/internal/zzfdq;)Z

    move-result p1

    goto :goto_4

    :sswitch_0
    iget-object p1, p0, Lcom/google/android/gms/internal/zzfhy;->zzpji:Lcom/google/android/gms/internal/zzfev;

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzfev;->zzcth()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/google/android/gms/internal/zzfhy;->zzpji:Lcom/google/android/gms/internal/zzfev;

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzfev;->size()I

    move-result v0

    if-nez v0, :cond_3

    const/16 v0, 0xa

    goto :goto_2

    :cond_3
    shl-int/lit8 v0, v0, 0x1

    :goto_2
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/zzfev;->zzln(I)Lcom/google/android/gms/internal/zzfev;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzfhy;->zzpji:Lcom/google/android/gms/internal/zzfev;

    :cond_4
    iget-object p1, p0, Lcom/google/android/gms/internal/zzfhy;->zzpji:Lcom/google/android/gms/internal/zzfev;

    invoke-static {}, Lcom/google/android/gms/internal/zzfde;->zzctj()Lcom/google/android/gms/internal/zzfde;

    move-result-object v0

    invoke-virtual {p2, v0, p3}, Lcom/google/android/gms/internal/zzfdq;->zza(Lcom/google/android/gms/internal/zzfee;Lcom/google/android/gms/internal/zzfea;)Lcom/google/android/gms/internal/zzfee;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzfde;

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/zzfev;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :sswitch_1
    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzfdq;->zzctz()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzfhy;->zzpjh:Ljava/lang/String;

    goto :goto_1

    :sswitch_2
    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzfdq;->zzctv()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/zzfhy;->zzpjg:I
    :try_end_1
    .catch Lcom/google/android/gms/internal/zzfew; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :goto_3
    :sswitch_3
    const/4 v2, 0x1

    goto :goto_1

    :goto_4
    if-nez p1, :cond_2

    goto :goto_3

    :catchall_1
    move-exception p1

    goto :goto_5

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

    :goto_5
    throw p1

    :cond_5
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/zzfhy;->zzpjj:Lcom/google/android/gms/internal/zzfhy;

    return-object p1

    :cond_6
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    :pswitch_3
    check-cast p2, Lcom/google/android/gms/internal/zzfen;

    check-cast p3, Lcom/google/android/gms/internal/zzfhy;

    iget p1, p0, Lcom/google/android/gms/internal/zzfhy;->zzpjg:I

    if-eqz p1, :cond_7

    const/4 v0, 0x1

    goto :goto_6

    :cond_7
    const/4 v0, 0x0

    :goto_6
    iget v3, p3, Lcom/google/android/gms/internal/zzfhy;->zzpjg:I

    if-eqz v3, :cond_8

    const/4 v2, 0x1

    :cond_8
    invoke-interface {p2, v0, p1, v2, v3}, Lcom/google/android/gms/internal/zzfen;->zza(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/zzfhy;->zzpjg:I

    iget-object p1, p0, Lcom/google/android/gms/internal/zzfhy;->zzpjh:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfhy;->zzpjh:Ljava/lang/String;

    iget-object v2, p3, Lcom/google/android/gms/internal/zzfhy;->zzpjh:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    xor-int/2addr v1, v2

    iget-object v2, p3, Lcom/google/android/gms/internal/zzfhy;->zzpjh:Ljava/lang/String;

    invoke-interface {p2, p1, v0, v1, v2}, Lcom/google/android/gms/internal/zzfen;->zza(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzfhy;->zzpjh:Ljava/lang/String;

    iget-object p1, p0, Lcom/google/android/gms/internal/zzfhy;->zzpji:Lcom/google/android/gms/internal/zzfev;

    iget-object v0, p3, Lcom/google/android/gms/internal/zzfhy;->zzpji:Lcom/google/android/gms/internal/zzfev;

    invoke-interface {p2, p1, v0}, Lcom/google/android/gms/internal/zzfen;->zza(Lcom/google/android/gms/internal/zzfev;Lcom/google/android/gms/internal/zzfev;)Lcom/google/android/gms/internal/zzfev;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzfhy;->zzpji:Lcom/google/android/gms/internal/zzfev;

    sget-object p1, Lcom/google/android/gms/internal/zzfel;->zzpcb:Lcom/google/android/gms/internal/zzfel;

    if-ne p2, p1, :cond_9

    iget p1, p0, Lcom/google/android/gms/internal/zzfhy;->zzltg:I

    iget p2, p3, Lcom/google/android/gms/internal/zzfhy;->zzltg:I

    or-int/2addr p1, p2

    iput p1, p0, Lcom/google/android/gms/internal/zzfhy;->zzltg:I

    :cond_9
    return-object p0

    :pswitch_4
    new-instance p1, Lcom/google/android/gms/internal/zzfhy$zza;

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/zzfhy$zza;-><init>(Lcom/google/android/gms/internal/zzfhz;)V

    return-object p1

    :pswitch_5
    iget-object p1, p0, Lcom/google/android/gms/internal/zzfhy;->zzpji:Lcom/google/android/gms/internal/zzfev;

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzfev;->zzbim()V

    return-object v0

    :pswitch_6
    sget-object p1, Lcom/google/android/gms/internal/zzfhy;->zzpjj:Lcom/google/android/gms/internal/zzfhy;

    return-object p1

    :pswitch_7
    new-instance p1, Lcom/google/android/gms/internal/zzfhy;

    invoke-direct {p1}, Lcom/google/android/gms/internal/zzfhy;-><init>()V

    return-object p1

    nop

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
        0x0 -> :sswitch_3
        0x8 -> :sswitch_2
        0x12 -> :sswitch_1
        0x1a -> :sswitch_0
    .end sparse-switch
.end method

.method public final zza(Lcom/google/android/gms/internal/zzfdv;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/zzfhy;->zzpjg:I

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/zzfdv;->zzaa(II)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfhy;->zzpjh:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfhy;->zzpjh:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzfdv;->zzn(ILjava/lang/String;)V

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzfhy;->zzpji:Lcom/google/android/gms/internal/zzfev;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzfev;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfhy;->zzpji:Lcom/google/android/gms/internal/zzfev;

    invoke-interface {v2, v0}, Lcom/google/android/gms/internal/zzfev;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzffi;

    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/zzfdv;->zza(ILcom/google/android/gms/internal/zzffi;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfhy;->zzpbs:Lcom/google/android/gms/internal/zzfgi;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzfgi;->zza(Lcom/google/android/gms/internal/zzfdv;)V

    return-void
.end method

.method public final zzhl()I
    .locals 4

    iget v0, p0, Lcom/google/android/gms/internal/zzfhy;->zzpbt:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/zzfhy;->zzpjg:I

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/zzfdv;->zzad(II)I

    move-result v0

    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/zzfhy;->zzpjh:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzfhy;->zzpjh:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzfdv;->zzo(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/google/android/gms/internal/zzfhy;->zzpji:Lcom/google/android/gms/internal/zzfev;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzfev;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/android/gms/internal/zzfhy;->zzpji:Lcom/google/android/gms/internal/zzfev;

    invoke-interface {v3, v1}, Lcom/google/android/gms/internal/zzfev;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/zzffi;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzfdv;->zzb(ILcom/google/android/gms/internal/zzffi;)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/zzfhy;->zzpbs:Lcom/google/android/gms/internal/zzfgi;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzfgi;->zzhl()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/zzfhy;->zzpbt:I

    return v0
.end method
