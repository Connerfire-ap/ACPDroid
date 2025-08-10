.class public Lcom/google/android/gms/internal/zzchj;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzchj$zza;
    }
.end annotation


# static fields
.field private static volatile zzjca:Lcom/google/android/gms/internal/zzchj;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzasd:Lcom/google/android/gms/common/util/zzd;

.field private zzdqd:Z

.field private final zzjcb:Lcom/google/android/gms/internal/zzcfk;

.field private final zzjcc:Lcom/google/android/gms/internal/zzcgu;

.field private final zzjcd:Lcom/google/android/gms/internal/zzcgj;

.field private final zzjce:Lcom/google/android/gms/internal/zzche;

.field private final zzjcf:Lcom/google/android/gms/internal/zzckc;

.field private final zzjcg:Lcom/google/android/gms/internal/zzchd;

.field private final zzjch:Lcom/google/android/gms/measurement/AppMeasurement;

.field private final zzjci:Lcom/google/firebase/analytics/FirebaseAnalytics;

.field private final zzjcj:Lcom/google/android/gms/internal/zzckn;

.field private final zzjck:Lcom/google/android/gms/internal/zzcgh;

.field private final zzjcl:Lcom/google/android/gms/internal/zzcfl;

.field private final zzjcm:Lcom/google/android/gms/internal/zzcgf;

.field private final zzjcn:Lcom/google/android/gms/internal/zzcgn;

.field private final zzjco:Lcom/google/android/gms/internal/zzciz;

.field private final zzjcp:Lcom/google/android/gms/internal/zzcjd;

.field private final zzjcq:Lcom/google/android/gms/internal/zzcfr;

.field private final zzjcr:Lcom/google/android/gms/internal/zzcik;

.field private final zzjcs:Lcom/google/android/gms/internal/zzcge;

.field private final zzjct:Lcom/google/android/gms/internal/zzcgs;

.field private final zzjcu:Lcom/google/android/gms/internal/zzcki;

.field private final zzjcv:Lcom/google/android/gms/internal/zzcfh;

.field private final zzjcw:Lcom/google/android/gms/internal/zzcfa;

.field private zzjcx:Z

.field private zzjcy:Ljava/lang/Boolean;

.field private zzjcz:J

.field private zzjda:Ljava/nio/channels/FileLock;

.field private zzjdb:Ljava/nio/channels/FileChannel;

.field private zzjdc:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private zzjdd:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private zzjde:I

.field private zzjdf:I

.field private zzjdg:J

.field private zzjdh:J

.field private zzjdi:Z

.field private zzjdj:Z

.field private zzjdk:Z

.field private final zzjdl:J


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzcij;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzchj;->zzdqd:Z

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzcij;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzchj;->mContext:Landroid/content/Context;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzchj;->zzjdg:J

    invoke-static {}, Lcom/google/android/gms/common/util/zzh;->zzalu()Lcom/google/android/gms/common/util/zzd;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzchj;->zzasd:Lcom/google/android/gms/common/util/zzd;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zzd;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzchj;->zzjdl:J

    new-instance v0, Lcom/google/android/gms/internal/zzcfk;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzcfk;-><init>(Lcom/google/android/gms/internal/zzchj;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzchj;->zzjcb:Lcom/google/android/gms/internal/zzcfk;

    new-instance v0, Lcom/google/android/gms/internal/zzcgu;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzcgu;-><init>(Lcom/google/android/gms/internal/zzchj;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcii;->initialize()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzchj;->zzjcc:Lcom/google/android/gms/internal/zzcgu;

    new-instance v0, Lcom/google/android/gms/internal/zzcgj;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzcgj;-><init>(Lcom/google/android/gms/internal/zzchj;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcii;->initialize()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzchj;->zzjcd:Lcom/google/android/gms/internal/zzcgj;

    new-instance v0, Lcom/google/android/gms/internal/zzckn;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzckn;-><init>(Lcom/google/android/gms/internal/zzchj;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcii;->initialize()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzchj;->zzjcj:Lcom/google/android/gms/internal/zzckn;

    new-instance v0, Lcom/google/android/gms/internal/zzcgh;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzcgh;-><init>(Lcom/google/android/gms/internal/zzchj;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcii;->initialize()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzchj;->zzjck:Lcom/google/android/gms/internal/zzcgh;

    new-instance v0, Lcom/google/android/gms/internal/zzcfr;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzcfr;-><init>(Lcom/google/android/gms/internal/zzchj;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcii;->initialize()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzchj;->zzjcq:Lcom/google/android/gms/internal/zzcfr;

    new-instance v0, Lcom/google/android/gms/internal/zzcge;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzcge;-><init>(Lcom/google/android/gms/internal/zzchj;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcii;->initialize()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzchj;->zzjcs:Lcom/google/android/gms/internal/zzcge;

    new-instance v0, Lcom/google/android/gms/internal/zzcfl;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzcfl;-><init>(Lcom/google/android/gms/internal/zzchj;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcii;->initialize()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzchj;->zzjcl:Lcom/google/android/gms/internal/zzcfl;

    new-instance v0, Lcom/google/android/gms/internal/zzcgf;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzcgf;-><init>(Lcom/google/android/gms/internal/zzchj;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcii;->initialize()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzchj;->zzjcm:Lcom/google/android/gms/internal/zzcgf;

    new-instance v0, Lcom/google/android/gms/internal/zzcfh;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzcfh;-><init>(Lcom/google/android/gms/internal/zzchj;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcii;->initialize()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzchj;->zzjcv:Lcom/google/android/gms/internal/zzcfh;

    new-instance v0, Lcom/google/android/gms/internal/zzcfa;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzcfa;-><init>(Lcom/google/android/gms/internal/zzchj;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzchj;->zzjcw:Lcom/google/android/gms/internal/zzcfa;

    new-instance v0, Lcom/google/android/gms/internal/zzcgn;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzcgn;-><init>(Lcom/google/android/gms/internal/zzchj;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcii;->initialize()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzchj;->zzjcn:Lcom/google/android/gms/internal/zzcgn;

    new-instance v0, Lcom/google/android/gms/internal/zzciz;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzciz;-><init>(Lcom/google/android/gms/internal/zzchj;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcii;->initialize()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzchj;->zzjco:Lcom/google/android/gms/internal/zzciz;

    new-instance v0, Lcom/google/android/gms/internal/zzcjd;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzcjd;-><init>(Lcom/google/android/gms/internal/zzchj;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcii;->initialize()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzchj;->zzjcp:Lcom/google/android/gms/internal/zzcjd;

    new-instance v0, Lcom/google/android/gms/internal/zzcik;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzcik;-><init>(Lcom/google/android/gms/internal/zzchj;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcii;->initialize()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzchj;->zzjcr:Lcom/google/android/gms/internal/zzcik;

    new-instance v0, Lcom/google/android/gms/internal/zzcki;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzcki;-><init>(Lcom/google/android/gms/internal/zzchj;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcii;->initialize()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzchj;->zzjcu:Lcom/google/android/gms/internal/zzcki;

    new-instance v0, Lcom/google/android/gms/internal/zzcgs;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzcgs;-><init>(Lcom/google/android/gms/internal/zzchj;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzchj;->zzjct:Lcom/google/android/gms/internal/zzcgs;

    new-instance v0, Lcom/google/android/gms/measurement/AppMeasurement;

    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/AppMeasurement;-><init>(Lcom/google/android/gms/internal/zzchj;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzchj;->zzjch:Lcom/google/android/gms/measurement/AppMeasurement;

    new-instance v0, Lcom/google/firebase/analytics/FirebaseAnalytics;

    invoke-direct {v0, p0}, Lcom/google/firebase/analytics/FirebaseAnalytics;-><init>(Lcom/google/android/gms/internal/zzchj;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzchj;->zzjci:Lcom/google/firebase/analytics/FirebaseAnalytics;

    new-instance v0, Lcom/google/android/gms/internal/zzckc;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzckc;-><init>(Lcom/google/android/gms/internal/zzchj;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcii;->initialize()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzchj;->zzjcf:Lcom/google/android/gms/internal/zzckc;

    new-instance v0, Lcom/google/android/gms/internal/zzchd;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzchd;-><init>(Lcom/google/android/gms/internal/zzchj;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcii;->initialize()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzchj;->zzjcg:Lcom/google/android/gms/internal/zzchd;

    new-instance v0, Lcom/google/android/gms/internal/zzche;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzche;-><init>(Lcom/google/android/gms/internal/zzchj;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcii;->initialize()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzchj;->zzjce:Lcom/google/android/gms/internal/zzche;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    instance-of p1, p1, Landroid/app/Application;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawa()Lcom/google/android/gms/internal/zzcik;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcih;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Landroid/app/Application;

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcih;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Application;

    iget-object v2, p1, Lcom/google/android/gms/internal/zzcik;->zzjec:Lcom/google/android/gms/internal/zzciy;

    if-nez v2, :cond_0

    new-instance v2, Lcom/google/android/gms/internal/zzciy;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v3}, Lcom/google/android/gms/internal/zzciy;-><init>(Lcom/google/android/gms/internal/zzcik;Lcom/google/android/gms/internal/zzcil;)V

    iput-object v2, p1, Lcom/google/android/gms/internal/zzcik;->zzjec:Lcom/google/android/gms/internal/zzciy;

    :cond_0
    iget-object v2, p1, Lcom/google/android/gms/internal/zzcik;->zzjec:Lcom/google/android/gms/internal/zzciy;

    invoke-virtual {v1, v2}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    iget-object v2, p1, Lcom/google/android/gms/internal/zzcik;->zzjec:Lcom/google/android/gms/internal/zzciy;

    invoke-virtual {v1, v2}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcih;->zzawm()Lcom/google/android/gms/internal/zzcgj;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcgj;->zzayx()Lcom/google/android/gms/internal/zzcgl;

    move-result-object p1

    const-string v1, "Registered activity lifecycle callback"

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawm()Lcom/google/android/gms/internal/zzcgj;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcgj;->zzayt()Lcom/google/android/gms/internal/zzcgl;

    move-result-object p1

    const-string v1, "Application context is not an Application"

    :goto_0
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/zzcgl;->log(Ljava/lang/String;)V

    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/zzchk;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/zzchk;-><init>(Lcom/google/android/gms/internal/zzchj;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzche;->zzg(Ljava/lang/Runnable;)V

    return-void
.end method

.method private final zza(Ljava/nio/channels/FileChannel;)I
    .locals 5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawl()Lcom/google/android/gms/internal/zzche;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcih;->zzut()V

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->isOpen()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    const-wide/16 v3, 0x0

    :try_start_0
    invoke-virtual {p1, v3, v4}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    invoke-virtual {p1, v2}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result p1

    if-eq p1, v1, :cond_2

    const/4 v1, -0x1

    if-eq p1, v1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawm()Lcom/google/android/gms/internal/zzcgj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcgj;->zzayt()Lcom/google/android/gms/internal/zzcgl;

    move-result-object v1

    const-string v2, "Unexpected data length. Bytes read"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/internal/zzcgl;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    return v0

    :cond_2
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawm()Lcom/google/android/gms/internal/zzcgj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcgj;->zzayr()Lcom/google/android/gms/internal/zzcgl;

    move-result-object v1

    const-string v2, "Failed to read from channel"

    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/internal/zzcgl;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return v0

    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawm()Lcom/google/android/gms/internal/zzcgj;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcgj;->zzayr()Lcom/google/android/gms/internal/zzcgl;

    move-result-object p1

    const-string v1, "Bad chanel to read from"

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/zzcgl;->log(Ljava/lang/String;)V

    return v0
.end method

.method private final zza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/google/android/gms/internal/zzcff;
    .locals 23

    move-object/from16 v2, p2

    const-string v1, "Unknown"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v3, 0x0

    if-nez v0, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawm()Lcom/google/android/gms/internal/zzcgj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcgj;->zzayr()Lcom/google/android/gms/internal/zzcgl;

    move-result-object v0

    const-string v1, "PackageManager is null, can not log app install information"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcgl;->log(Ljava/lang/String;)V

    return-object v3

    :cond_0
    :try_start_0
    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawm()Lcom/google/android/gms/internal/zzcgj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcgj;->zzayr()Lcom/google/android/gms/internal/zzcgl;

    move-result-object v0

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/zzcgj;->zzje(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "Error retrieving installer package name. appId"

    invoke-virtual {v0, v5, v4}, Lcom/google/android/gms/internal/zzcgl;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v0, v1

    :goto_0
    if-nez v0, :cond_1

    const-string v0, "manual_install"

    goto :goto_1

    :cond_1
    const-string v4, "com.android.vending"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v0, ""

    :cond_2
    :goto_1
    move-object v7, v0

    :try_start_1
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/zzbgc;->zzcy(Landroid/content/Context;)Lcom/google/android/gms/internal/zzbgb;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4}, Lcom/google/android/gms/internal/zzbgb;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/zzbgc;->zzcy(Landroid/content/Context;)Lcom/google/android/gms/internal/zzbgb;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/zzbgb;->zzgo(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_3
    iget-object v4, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_3

    :cond_4
    const/high16 v0, -0x80000000

    move-object v4, v1

    :goto_2
    new-instance v22, Lcom/google/android/gms/internal/zzcff;

    move-object/from16 v1, v22

    int-to-long v5, v0

    const-wide/16 v8, 0x2dc8

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawi()Lcom/google/android/gms/internal/zzckn;

    move-result-object v0

    move-object/from16 v3, p1

    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/internal/zzckn;->zzaf(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v10

    const/4 v12, 0x0

    const/4 v14, 0x0

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    const/16 v20, 0x0

    const-string v15, ""

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v13, p4

    move/from16 v21, p5

    invoke-direct/range {v1 .. v21}, Lcom/google/android/gms/internal/zzcff;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;ZZLjava/lang/String;JJIZ)V

    return-object v22

    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawm()Lcom/google/android/gms/internal/zzcgj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcgj;->zzayr()Lcom/google/android/gms/internal/zzcgl;

    move-result-object v0

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/zzcgj;->zzje(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v4, "Error retrieving newly installed package info. appId, appName"

    invoke-virtual {v0, v4, v2, v1}, Lcom/google/android/gms/internal/zzcgl;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v3
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzchj;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzchj;->zzazk()V

    return-void
.end method

.method private static zza(Lcom/google/android/gms/internal/zzcih;)V
    .locals 1

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Component not created"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static zza(Lcom/google/android/gms/internal/zzcii;)V
    .locals 1

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcii;->isInitialized()Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Component not initialized"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Component not created"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final zza(ILjava/nio/channels/FileChannel;)Z
    .locals 6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawl()Lcom/google/android/gms/internal/zzche;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcih;->zzut()V

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->isOpen()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    const-wide/16 v2, 0x0

    :try_start_0
    invoke-virtual {p2, v2, v3}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    invoke-virtual {p2, v1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    const/4 p1, 0x1

    invoke-virtual {p2, p1}, Ljava/nio/channels/FileChannel;->force(Z)V

    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v1

    const-wide/16 v3, 0x4

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawm()Lcom/google/android/gms/internal/zzcgj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcgj;->zzayr()Lcom/google/android/gms/internal/zzcgl;

    move-result-object v1

    const-string v2, "Error writing to channel. Bytes written"

    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v1, v2, p2}, Lcom/google/android/gms/internal/zzcgl;->zzj(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawm()Lcom/google/android/gms/internal/zzcgj;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzcgj;->zzayr()Lcom/google/android/gms/internal/zzcgl;

    move-result-object p2

    const-string v1, "Failed to write to channel"

    invoke-virtual {p2, v1, p1}, Lcom/google/android/gms/internal/zzcgl;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    return v0

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawm()Lcom/google/android/gms/internal/zzcgj;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcgj;->zzayr()Lcom/google/android/gms/internal/zzcgl;

    move-result-object p1

    const-string p2, "Bad chanel to read from"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzcgl;->log(Ljava/lang/String;)V

    return v0
.end method

.method private static zza(Lcom/google/android/gms/internal/zzcky;Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_6

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/zzcky;->zzjim:[Lcom/google/android/gms/internal/zzckz;

    array-length v0, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_6

    aget-object v3, p0, v2

    iget-object v4, v3, Lcom/google/android/gms/internal/zzckz;->name:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    instance-of p0, p2, Ljava/lang/Long;

    if-eqz p0, :cond_1

    iget-object p0, v3, Lcom/google/android/gms/internal/zzckz;->zzjiq:Ljava/lang/Long;

    invoke-virtual {p2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    :cond_1
    instance-of p0, p2, Ljava/lang/String;

    if-eqz p0, :cond_2

    iget-object p0, v3, Lcom/google/android/gms/internal/zzckz;->zzfzi:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    :cond_2
    instance-of p0, p2, Ljava/lang/Double;

    if-eqz p0, :cond_4

    iget-object p0, v3, Lcom/google/android/gms/internal/zzckz;->zzjgq:Ljava/lang/Double;

    invoke-virtual {p2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    :cond_3
    const/4 p0, 0x1

    return p0

    :cond_4
    return v1

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    :goto_1
    return v1
.end method

.method private final zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzcfx;)Z
    .locals 13

    iget-object v0, p2, Lcom/google/android/gms/internal/zzcfx;->zziwy:Lcom/google/android/gms/internal/zzcfu;

    const-string v1, "currency"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcfu;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p2, Lcom/google/android/gms/internal/zzcfx;->name:Ljava/lang/String;

    const-string v2, "ecommerce_purchase"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "value"

    if-eqz v1, :cond_2

    iget-object v1, p2, Lcom/google/android/gms/internal/zzcfx;->zziwy:Lcom/google/android/gms/internal/zzcfu;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/zzcfu;->getDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    const-wide v6, 0x412e848000000000L    # 1000000.0

    mul-double v4, v4, v6

    const-wide/16 v8, 0x0

    cmpl-double v1, v4, v8

    if-nez v1, :cond_0

    iget-object v1, p2, Lcom/google/android/gms/internal/zzcfx;->zziwy:Lcom/google/android/gms/internal/zzcfu;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/zzcfu;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    long-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v3, v6

    :cond_0
    const-wide/high16 v6, 0x43e0000000000000L    # 9.223372036854776E18

    cmpg-double v1, v4, v6

    if-gtz v1, :cond_1

    const-wide/high16 v6, -0x3c20000000000000L    # -9.223372036854776E18

    cmpl-double v1, v4, v6

    if-ltz v1, :cond_1

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawm()Lcom/google/android/gms/internal/zzcgj;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzcgj;->zzayt()Lcom/google/android/gms/internal/zzcgl;

    move-result-object p2

    invoke-static {p1}, Lcom/google/android/gms/internal/zzcgj;->zzje(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const-string v1, "Data lost. Currency value is too big. appId"

    invoke-virtual {p2, v1, p1, v0}, Lcom/google/android/gms/internal/zzcgl;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return v2

    :cond_2
    iget-object v1, p2, Lcom/google/android/gms/internal/zzcfx;->zziwy:Lcom/google/android/gms/internal/zzcfu;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/zzcfu;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v5, 0x1

    if-nez v1, :cond_6

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[A-Z]{3}"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "_ltv_"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    move-object v9, v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawg()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v0

    invoke-virtual {v0, p1, v9}, Lcom/google/android/gms/internal/zzcfl;->zzag(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/zzckm;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v1, v0, Lcom/google/android/gms/internal/zzckm;->mValue:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/Long;

    if-nez v1, :cond_4

    goto :goto_2

    :cond_4
    iget-object v0, v0, Lcom/google/android/gms/internal/zzckm;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    new-instance v2, Lcom/google/android/gms/internal/zzckm;

    iget-object v8, p2, Lcom/google/android/gms/internal/zzcfx;->zzivk:Ljava/lang/String;

    iget-object p2, p0, Lcom/google/android/gms/internal/zzchj;->zzasd:Lcom/google/android/gms/common/util/zzd;

    invoke-interface {p2}, Lcom/google/android/gms/common/util/zzd;->currentTimeMillis()J

    move-result-wide v10

    add-long/2addr v0, v3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    move-object v6, v2

    move-object v7, p1

    invoke-direct/range {v6 .. v12}, Lcom/google/android/gms/internal/zzckm;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    goto :goto_4

    :cond_5
    :goto_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawg()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzchj;->zzjcb:Lcom/google/android/gms/internal/zzcfk;

    sget-object v6, Lcom/google/android/gms/internal/zzcfz;->zziym:Lcom/google/android/gms/internal/zzcga;

    invoke-virtual {v1, p1, v6}, Lcom/google/android/gms/internal/zzcfk;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzcga;)I

    move-result v1

    sub-int/2addr v1, v5

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->zzgh(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcih;->zzut()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcii;->zzwu()V

    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcfl;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    const-string v7, "delete from user_attributes where app_id=? and name in (select name from user_attributes where app_id=? and name like \'_ltv_%\' order by set_timestamp desc limit ?,10);"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/String;

    aput-object p1, v8, v2

    aput-object p1, v8, v5

    const/4 v2, 0x2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v8, v2

    invoke-virtual {v6, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcih;->zzawm()Lcom/google/android/gms/internal/zzcgj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcgj;->zzayr()Lcom/google/android/gms/internal/zzcgl;

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/gms/internal/zzcgj;->zzje(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v6, "Error pruning currencies. appId"

    invoke-virtual {v0, v6, v2, v1}, Lcom/google/android/gms/internal/zzcgl;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_3
    new-instance v2, Lcom/google/android/gms/internal/zzckm;

    iget-object v8, p2, Lcom/google/android/gms/internal/zzcfx;->zzivk:Ljava/lang/String;

    iget-object p2, p0, Lcom/google/android/gms/internal/zzchj;->zzasd:Lcom/google/android/gms/common/util/zzd;

    invoke-interface {p2}, Lcom/google/android/gms/common/util/zzd;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    move-object v6, v2

    move-object v7, p1

    invoke-direct/range {v6 .. v12}, Lcom/google/android/gms/internal/zzckm;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    :goto_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawg()Lcom/google/android/gms/internal/zzcfl;

    move-result-object p2

    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/zzcfl;->zza(Lcom/google/android/gms/internal/zzckm;)Z

    move-result p2

    if-nez p2, :cond_6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawm()Lcom/google/android/gms/internal/zzcgj;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzcgj;->zzayr()Lcom/google/android/gms/internal/zzcgl;

    move-result-object p2

    invoke-static {p1}, Lcom/google/android/gms/internal/zzcgj;->zzje(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawh()Lcom/google/android/gms/internal/zzcgh;

    move-result-object v1

    iget-object v3, v2, Lcom/google/android/gms/internal/zzckm;->mName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/zzcgh;->zzjd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v2, Lcom/google/android/gms/internal/zzckm;->mValue:Ljava/lang/Object;

    const-string v3, "Too many unique user properties are set. Ignoring user property. appId"

    invoke-virtual {p2, v3, v0, v1, v2}, Lcom/google/android/gms/internal/zzcgl;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawi()Lcom/google/android/gms/internal/zzckn;

    move-result-object v6

    const/16 v8, 0x9

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v7, p1

    invoke-virtual/range {v6 .. v11}, Lcom/google/android/gms/internal/zzckn;->zza(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    :cond_6
    return v5
.end method

.method private final zza(Ljava/lang/String;[Lcom/google/android/gms/internal/zzcld;[Lcom/google/android/gms/internal/zzcky;)[Lcom/google/android/gms/internal/zzckx;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->zzgh(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzavz()Lcom/google/android/gms/internal/zzcfh;

    move-result-object v0

    invoke-virtual {v0, p1, p3, p2}, Lcom/google/android/gms/internal/zzcfh;->zza(Ljava/lang/String;[Lcom/google/android/gms/internal/zzcky;[Lcom/google/android/gms/internal/zzcld;)[Lcom/google/android/gms/internal/zzckx;

    move-result-object p1

    return-object p1
.end method

.method static zzavw()V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected call on client side"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final zzazk()V
    .locals 5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawl()Lcom/google/android/gms/internal/zzche;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcih;->zzut()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzchj;->zzjcj:Lcom/google/android/gms/internal/zzckn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcii;->zzazk()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzchj;->zzjcc:Lcom/google/android/gms/internal/zzcgu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcii;->zzazk()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzchj;->zzjcs:Lcom/google/android/gms/internal/zzcge;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcii;->zzazk()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawm()Lcom/google/android/gms/internal/zzcgj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcgj;->zzayv()Lcom/google/android/gms/internal/zzcgl;

    move-result-object v0

    const-wide/16 v1, 0x2dc8

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "App measurement is starting up, version"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/zzcgl;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawm()Lcom/google/android/gms/internal/zzcgj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcgj;->zzayv()Lcom/google/android/gms/internal/zzcgl;

    move-result-object v0

    const-string v1, "To enable debug logging run: adb shell setprop log.tag.FA VERBOSE"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcgl;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzchj;->zzjcs:Lcom/google/android/gms/internal/zzcge;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcge;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawi()Lcom/google/android/gms/internal/zzckn;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzckn;->zzkd(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawm()Lcom/google/android/gms/internal/zzcgj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcgj;->zzayv()Lcom/google/android/gms/internal/zzcgl;

    move-result-object v0

    const-string v1, "Faster debug mode event logging enabled. To disable, run:\n  adb shell setprop debug.firebase.analytics.app .none."

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawm()Lcom/google/android/gms/internal/zzcgj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcgj;->zzayv()Lcom/google/android/gms/internal/zzcgl;

    move-result-object v1

    const-string v2, "To enable faster debug mode event logging run:\n  adb shell setprop debug.firebase.analytics.app "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_1
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcgl;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawm()Lcom/google/android/gms/internal/zzcgj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcgj;->zzayw()Lcom/google/android/gms/internal/zzcgl;

    move-result-object v0

    const-string v1, "Debug-level message logging enabled"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcgl;->log(Ljava/lang/String;)V

    iget v0, p0, Lcom/google/android/gms/internal/zzchj;->zzjde:I

    iget v1, p0, Lcom/google/android/gms/internal/zzchj;->zzjdf:I

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawm()Lcom/google/android/gms/internal/zzcgj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcgj;->zzayr()Lcom/google/android/gms/internal/zzcgl;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/zzchj;->zzjde:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/internal/zzchj;->zzjdf:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "Not all components initialized"

    invoke-virtual {v0, v3, v1, v2}, Lcom/google/android/gms/internal/zzcgl;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzchj;->zzdqd:Z

    return-void
.end method

.method private final zzazq()Lcom/google/android/gms/internal/zzcgs;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzchj;->zzjct:Lcom/google/android/gms/internal/zzcgs;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Network broadcast receiver not created"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final zzazr()Lcom/google/android/gms/internal/zzcki;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzchj;->zzjcu:Lcom/google/android/gms/internal/zzcki;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzchj;->zza(Lcom/google/android/gms/internal/zzcii;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzchj;->zzjcu:Lcom/google/android/gms/internal/zzcki;

    return-object v0
.end method

.method private final zzazs()Z
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawl()Lcom/google/android/gms/internal/zzche;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcih;->zzut()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzchj;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    const-string v2, "google_app_measurement.db"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v2, "rw"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzchj;->zzjdb:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->tryLock()Ljava/nio/channels/FileLock;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzchj;->zzjda:Ljava/nio/channels/FileLock;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawm()Lcom/google/android/gms/internal/zzcgj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcgj;->zzayx()Lcom/google/android/gms/internal/zzcgl;

    move-result-object v0

    const-string v1, "Storage concurrent access okay"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcgl;->log(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawm()Lcom/google/android/gms/internal/zzcgj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcgj;->zzayr()Lcom/google/android/gms/internal/zzcgl;

    move-result-object v0

    const-string v1, "Storage concurrent data access panic"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcgl;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawm()Lcom/google/android/gms/internal/zzcgj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcgj;->zzayr()Lcom/google/android/gms/internal/zzcgl;

    move-result-object v1

    const-string v2, "Failed to access storage lock file"

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawm()Lcom/google/android/gms/internal/zzcgj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcgj;->zzayr()Lcom/google/android/gms/internal/zzcgl;

    move-result-object v1

    const-string v2, "Failed to acquire storage lock"

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/zzcgl;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method private final zzazu()J
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/internal/zzchj;->zzasd:Lcom/google/android/gms/common/util/zzd;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zzd;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawn()Lcom/google/android/gms/internal/zzcgu;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcii;->zzwu()V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcih;->zzut()V

    iget-object v3, v2, Lcom/google/android/gms/internal/zzcgu;->zzjaa:Lcom/google/android/gms/internal/zzcgx;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzcgx;->get()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-nez v7, :cond_0

    const-wide/16 v3, 0x1

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcih;->zzawi()Lcom/google/android/gms/internal/zzckn;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzckn;->zzban()Ljava/security/SecureRandom;

    move-result-object v5

    const v6, 0x5265c00

    invoke-virtual {v5, v6}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v5

    int-to-long v5, v5

    add-long/2addr v3, v5

    iget-object v2, v2, Lcom/google/android/gms/internal/zzcgu;->zzjaa:Lcom/google/android/gms/internal/zzcgx;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/zzcgx;->set(J)V

    :cond_0
    add-long/2addr v0, v3

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-wide/16 v2, 0x3c

    div-long/2addr v0, v2

    div-long/2addr v0, v2

    const-wide/16 v2, 0x18

    div-long/2addr v0, v2

    return-wide v0
.end method

.method private final zzazw()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawl()Lcom/google/android/gms/internal/zzche;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcih;->zzut()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzwu()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawg()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcfl;->zzaxy()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawg()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcfl;->zzaxt()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private final zzazx()V
    .locals 20

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawl()Lcom/google/android/gms/internal/zzche;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcih;->zzut()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzwu()V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzbaa()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-wide v1, v0, Lcom/google/android/gms/internal/zzchj;->zzjdh:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_2

    iget-object v1, v0, Lcom/google/android/gms/internal/zzchj;->zzasd:Lcom/google/android/gms/common/util/zzd;

    invoke-interface {v1}, Lcom/google/android/gms/common/util/zzd;->elapsedRealtime()J

    move-result-wide v1

    const-wide/32 v5, 0x36ee80

    iget-wide v7, v0, Lcom/google/android/gms/internal/zzchj;->zzjdh:J

    sub-long/2addr v1, v7

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    sub-long/2addr v5, v1

    cmp-long v1, v5, v3

    if-lez v1, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawm()Lcom/google/android/gms/internal/zzcgj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcgj;->zzayx()Lcom/google/android/gms/internal/zzcgl;

    move-result-object v1

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "Upload has been suspended. Will update scheduling later in approximately ms"

    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/internal/zzcgl;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzazq()Lcom/google/android/gms/internal/zzcgs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcgs;->unregister()V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzazr()Lcom/google/android/gms/internal/zzcki;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcki;->cancel()V

    return-void

    :cond_1
    iput-wide v3, v0, Lcom/google/android/gms/internal/zzchj;->zzjdh:J

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzazj()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzazw()Z

    move-result v1

    if-nez v1, :cond_3

    goto/16 :goto_5

    :cond_3
    iget-object v1, v0, Lcom/google/android/gms/internal/zzchj;->zzasd:Lcom/google/android/gms/common/util/zzd;

    invoke-interface {v1}, Lcom/google/android/gms/common/util/zzd;->currentTimeMillis()J

    move-result-wide v1

    sget-object v5, Lcom/google/android/gms/internal/zzcfz;->zziyi:Lcom/google/android/gms/internal/zzcga;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzcga;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawg()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/internal/zzcfl;->zzaxz()Z

    move-result v7

    if-nez v7, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawg()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/internal/zzcfl;->zzaxu()Z

    move-result v7

    if-eqz v7, :cond_4

    goto :goto_0

    :cond_4
    const/4 v7, 0x0

    goto :goto_1

    :cond_5
    :goto_0
    const/4 v7, 0x1

    :goto_1
    if-eqz v7, :cond_7

    iget-object v9, v0, Lcom/google/android/gms/internal/zzchj;->zzjcb:Lcom/google/android/gms/internal/zzcfk;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/zzcfk;->zzaxr()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_6

    const-string v10, ".none."

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    sget-object v9, Lcom/google/android/gms/internal/zzcfz;->zziyd:Lcom/google/android/gms/internal/zzcga;

    goto :goto_2

    :cond_6
    sget-object v9, Lcom/google/android/gms/internal/zzcfz;->zziyc:Lcom/google/android/gms/internal/zzcga;

    goto :goto_2

    :cond_7
    sget-object v9, Lcom/google/android/gms/internal/zzcfz;->zziyb:Lcom/google/android/gms/internal/zzcga;

    :goto_2
    invoke-virtual {v9}, Lcom/google/android/gms/internal/zzcga;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-static {v3, v4, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawn()Lcom/google/android/gms/internal/zzcgu;

    move-result-object v11

    iget-object v11, v11, Lcom/google/android/gms/internal/zzcgu;->zzizw:Lcom/google/android/gms/internal/zzcgx;

    invoke-virtual {v11}, Lcom/google/android/gms/internal/zzcgx;->get()J

    move-result-wide v11

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawn()Lcom/google/android/gms/internal/zzcgu;

    move-result-object v13

    iget-object v13, v13, Lcom/google/android/gms/internal/zzcgu;->zzizx:Lcom/google/android/gms/internal/zzcgx;

    invoke-virtual {v13}, Lcom/google/android/gms/internal/zzcgx;->get()J

    move-result-wide v13

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawg()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v15

    move-wide/from16 v16, v9

    invoke-virtual {v15}, Lcom/google/android/gms/internal/zzcfl;->zzaxw()J

    move-result-wide v8

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawg()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v10

    move-wide/from16 v18, v5

    invoke-virtual {v10}, Lcom/google/android/gms/internal/zzcfl;->zzaxx()J

    move-result-wide v5

    invoke-static {v8, v9, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    cmp-long v8, v5, v3

    if-nez v8, :cond_9

    :cond_8
    move-wide v10, v3

    goto/16 :goto_4

    :cond_9
    sub-long/2addr v5, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v5

    sub-long v5, v1, v5

    sub-long/2addr v11, v1

    invoke-static {v11, v12}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    sub-long v8, v1, v8

    sub-long/2addr v13, v1

    invoke-static {v13, v14}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    sub-long/2addr v1, v10

    invoke-static {v8, v9, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    add-long v10, v5, v18

    if-eqz v7, :cond_a

    cmp-long v7, v8, v3

    if-lez v7, :cond_a

    invoke-static {v5, v6, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    add-long v10, v10, v16

    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawi()Lcom/google/android/gms/internal/zzckn;

    move-result-object v7

    move-wide/from16 v12, v16

    invoke-virtual {v7, v8, v9, v12, v13}, Lcom/google/android/gms/internal/zzckn;->zzf(JJ)Z

    move-result v7

    if-nez v7, :cond_b

    add-long v10, v8, v12

    :cond_b
    cmp-long v7, v1, v3

    if-eqz v7, :cond_d

    cmp-long v7, v1, v5

    if-ltz v7, :cond_d

    const/4 v5, 0x0

    :goto_3
    const/16 v6, 0x14

    sget-object v7, Lcom/google/android/gms/internal/zzcfz;->zziyk:Lcom/google/android/gms/internal/zzcga;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/zzcga;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, 0x0

    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    if-ge v5, v6, :cond_8

    const-wide/16 v6, 0x1

    shl-long/2addr v6, v5

    sget-object v9, Lcom/google/android/gms/internal/zzcfz;->zziyj:Lcom/google/android/gms/internal/zzcga;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/zzcga;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-static {v3, v4, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    mul-long v12, v12, v6

    add-long/2addr v10, v12

    cmp-long v6, v10, v1

    if-lez v6, :cond_c

    goto :goto_4

    :cond_c
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_d
    :goto_4
    cmp-long v1, v10, v3

    if-nez v1, :cond_e

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawm()Lcom/google/android/gms/internal/zzcgj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcgj;->zzayx()Lcom/google/android/gms/internal/zzcgl;

    move-result-object v1

    const-string v2, "Next upload time is 0"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzcgl;->log(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzazq()Lcom/google/android/gms/internal/zzcgs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcgs;->unregister()V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzazr()Lcom/google/android/gms/internal/zzcki;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcki;->cancel()V

    return-void

    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzazp()Lcom/google/android/gms/internal/zzcgn;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcgn;->zzzh()Z

    move-result v1

    if-nez v1, :cond_f

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawm()Lcom/google/android/gms/internal/zzcgj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcgj;->zzayx()Lcom/google/android/gms/internal/zzcgl;

    move-result-object v1

    const-string v2, "No network"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzcgl;->log(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzazq()Lcom/google/android/gms/internal/zzcgs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcgs;->zzze()V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzazr()Lcom/google/android/gms/internal/zzcki;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcki;->cancel()V

    return-void

    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawn()Lcom/google/android/gms/internal/zzcgu;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/zzcgu;->zzizy:Lcom/google/android/gms/internal/zzcgx;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcgx;->get()J

    move-result-wide v1

    sget-object v5, Lcom/google/android/gms/internal/zzcfz;->zzixz:Lcom/google/android/gms/internal/zzcga;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzcga;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawi()Lcom/google/android/gms/internal/zzckn;

    move-result-object v7

    invoke-virtual {v7, v1, v2, v5, v6}, Lcom/google/android/gms/internal/zzckn;->zzf(JJ)Z

    move-result v7

    if-nez v7, :cond_10

    add-long/2addr v1, v5

    invoke-static {v10, v11, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    :cond_10
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzazq()Lcom/google/android/gms/internal/zzcgs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcgs;->unregister()V

    iget-object v1, v0, Lcom/google/android/gms/internal/zzchj;->zzasd:Lcom/google/android/gms/common/util/zzd;

    invoke-interface {v1}, Lcom/google/android/gms/common/util/zzd;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v10, v1

    cmp-long v1, v10, v3

    if-gtz v1, :cond_11

    sget-object v1, Lcom/google/android/gms/internal/zzcfz;->zziye:Lcom/google/android/gms/internal/zzcga;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcga;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawn()Lcom/google/android/gms/internal/zzcgu;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/zzcgu;->zzizw:Lcom/google/android/gms/internal/zzcgx;

    iget-object v2, v0, Lcom/google/android/gms/internal/zzchj;->zzasd:Lcom/google/android/gms/common/util/zzd;

    invoke-interface {v2}, Lcom/google/android/gms/common/util/zzd;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/zzcgx;->set(J)V

    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawm()Lcom/google/android/gms/internal/zzcgj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcgj;->zzayx()Lcom/google/android/gms/internal/zzcgl;

    move-result-object v1

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "Upload scheduled in approximately ms"

    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/internal/zzcgl;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzazr()Lcom/google/android/gms/internal/zzcki;

    move-result-object v1

    invoke-virtual {v1, v10, v11}, Lcom/google/android/gms/internal/zzcki;->zzr(J)V

    return-void

    :cond_12
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawm()Lcom/google/android/gms/internal/zzcgj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcgj;->zzayx()Lcom/google/android/gms/internal/zzcgl;

    move-result-object v1

    const-string v2, "Nothing to upload or uploading impossible"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzcgl;->log(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzazq()Lcom/google/android/gms/internal/zzcgs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcgs;->unregister()V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzazr()Lcom/google/android/gms/internal/zzcki;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcki;->cancel()V

    return-void
.end method

.method private final zzb(Lcom/google/android/gms/internal/zzcfe;)V
    .locals 10

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawl()Lcom/google/android/gms/internal/zzche;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcih;->zzut()V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcfe;->getGmpAppId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcfe;->getAppId()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xcc

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/zzchj;->zzb(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcfe;->getGmpAppId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcfe;->getAppInstanceId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/net/Uri$Builder;

    invoke-direct {v2}, Landroid/net/Uri$Builder;-><init>()V

    sget-object v3, Lcom/google/android/gms/internal/zzcfz;->zzixm:Lcom/google/android/gms/internal/zzcga;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzcga;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/internal/zzcfz;->zzixn:Lcom/google/android/gms/internal/zzcga;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzcga;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->encodedAuthority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "config/app/"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v3, v0}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v3, "app_instance_id"

    invoke-virtual {v0, v3, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "platform"

    const-string v3, "android"

    invoke-virtual {v0, v1, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "gmp_version"

    const-string v3, "11720"

    invoke-virtual {v0, v1, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawm()Lcom/google/android/gms/internal/zzcgj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcgj;->zzayx()Lcom/google/android/gms/internal/zzcgl;

    move-result-object v1

    const-string v2, "Fetching remote configuration"

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcfe;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/zzcgl;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawj()Lcom/google/android/gms/internal/zzchd;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcfe;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzchd;->zzjm(Ljava/lang/String;)Lcom/google/android/gms/internal/zzckv;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawj()Lcom/google/android/gms/internal/zzchd;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcfe;->getAppId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/zzchd;->zzjn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v1, :cond_2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v1}, Landroid/support/v4/util/ArrayMap;-><init>()V

    const-string v2, "If-Modified-Since"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v6, v1

    goto :goto_1

    :cond_2
    move-object v6, v2

    :goto_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzchj;->zzjdi:Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzazp()Lcom/google/android/gms/internal/zzcgn;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcfe;->getAppId()Ljava/lang/String;

    move-result-object v3

    new-instance v7, Lcom/google/android/gms/internal/zzchn;

    invoke-direct {v7, p0}, Lcom/google/android/gms/internal/zzchn;-><init>(Lcom/google/android/gms/internal/zzchj;)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcih;->zzut()V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcii;->zzwu()V

    invoke-static {v4}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v7}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcih;->zzawl()Lcom/google/android/gms/internal/zzche;

    move-result-object v8

    new-instance v9, Lcom/google/android/gms/internal/zzcgr;

    const/4 v5, 0x0

    move-object v1, v9

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/zzcgr;-><init>(Lcom/google/android/gms/internal/zzcgn;Ljava/lang/String;Ljava/net/URL;[BLjava/util/Map;Lcom/google/android/gms/internal/zzcgp;)V

    invoke-virtual {v8, v9}, Lcom/google/android/gms/internal/zzche;->zzh(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawm()Lcom/google/android/gms/internal/zzcgj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcgj;->zzayr()Lcom/google/android/gms/internal/zzcgl;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcfe;->getAppId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzcgj;->zzje(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v2, "Failed to parse config URL. Not fetching. appId"

    invoke-virtual {v1, v2, p1, v0}, Lcom/google/android/gms/internal/zzcgl;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private final zzbaa()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawl()Lcom/google/android/gms/internal/zzche;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcih;->zzut()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzwu()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzchj;->zzjcx:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final zzbab()V
    .locals 5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawl()Lcom/google/android/gms/internal/zzche;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcih;->zzut()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzchj;->zzjdi:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzchj;->zzjdj:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzchj;->zzjdk:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawm()Lcom/google/android/gms/internal/zzcgj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcgj;->zzayx()Lcom/google/android/gms/internal/zzcgl;

    move-result-object v0

    const-string v1, "Stopping uploading service(s)"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcgl;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzchj;->zzjdd:Ljava/util/List;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzchj;->zzjdd:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void

    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawm()Lcom/google/android/gms/internal/zzcgj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcgj;->zzayx()Lcom/google/android/gms/internal/zzcgl;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzchj;->zzjdi:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzchj;->zzjdj:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-boolean v3, p0, Lcom/google/android/gms/internal/zzchj;->zzjdk:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "Not stopping services. fetch, network, upload"

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/google/android/gms/internal/zzcgl;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private final zzc(Lcom/google/android/gms/internal/zzcfx;Lcom/google/android/gms/internal/zzcff;)V
    .locals 32

    move-object/from16 v11, p0

    move-object/from16 v0, p1

    move-object/from16 v12, p2

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v12, Lcom/google/android/gms/internal/zzcff;->packageName:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzbq;->zzgh(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v13

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawl()Lcom/google/android/gms/internal/zzche;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcih;->zzut()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzwu()V

    iget-object v15, v12, Lcom/google/android/gms/internal/zzcff;->packageName:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawi()Lcom/google/android/gms/internal/zzckn;

    invoke-static/range {p1 .. p2}, Lcom/google/android/gms/internal/zzckn;->zzd(Lcom/google/android/gms/internal/zzcfx;Lcom/google/android/gms/internal/zzcff;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-boolean v1, v12, Lcom/google/android/gms/internal/zzcff;->zzivc:Z

    if-nez v1, :cond_1

    invoke-direct {v11, v12}, Lcom/google/android/gms/internal/zzchj;->zzg(Lcom/google/android/gms/internal/zzcff;)V

    return-void

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawj()Lcom/google/android/gms/internal/zzchd;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/gms/internal/zzcfx;->name:Ljava/lang/String;

    invoke-virtual {v1, v15, v2}, Lcom/google/android/gms/internal/zzchd;->zzan(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    const-string v2, "_err"

    const/4 v10, 0x0

    const/16 v29, 0x1

    if-eqz v1, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawm()Lcom/google/android/gms/internal/zzcgj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcgj;->zzayt()Lcom/google/android/gms/internal/zzcgl;

    move-result-object v1

    invoke-static {v15}, Lcom/google/android/gms/internal/zzcgj;->zzje(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawh()Lcom/google/android/gms/internal/zzcgh;

    move-result-object v4

    iget-object v5, v0, Lcom/google/android/gms/internal/zzcfx;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/zzcgh;->zzjb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Dropping blacklisted event. appId"

    invoke-virtual {v1, v5, v3, v4}, Lcom/google/android/gms/internal/zzcgl;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawi()Lcom/google/android/gms/internal/zzckn;

    move-result-object v1

    invoke-virtual {v1, v15}, Lcom/google/android/gms/internal/zzckn;->zzkf(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawi()Lcom/google/android/gms/internal/zzckn;

    move-result-object v1

    invoke-virtual {v1, v15}, Lcom/google/android/gms/internal/zzckn;->zzkg(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    const/4 v10, 0x1

    :cond_3
    if-nez v10, :cond_4

    iget-object v1, v0, Lcom/google/android/gms/internal/zzcfx;->name:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawi()Lcom/google/android/gms/internal/zzckn;

    move-result-object v2

    const/16 v4, 0xb

    iget-object v6, v0, Lcom/google/android/gms/internal/zzcfx;->name:Ljava/lang/String;

    const/4 v7, 0x0

    const-string v5, "_ev"

    move-object v3, v15

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/internal/zzckn;->zza(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    :cond_4
    if-eqz v10, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawg()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v0

    invoke-virtual {v0, v15}, Lcom/google/android/gms/internal/zzcfl;->zziv(Ljava/lang/String;)Lcom/google/android/gms/internal/zzcfe;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcfe;->zzaxb()J

    move-result-wide v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcfe;->zzaxa()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    iget-object v3, v11, Lcom/google/android/gms/internal/zzchj;->zzasd:Lcom/google/android/gms/common/util/zzd;

    invoke-interface {v3}, Lcom/google/android/gms/common/util/zzd;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    sget-object v3, Lcom/google/android/gms/internal/zzcfz;->zziyh:Lcom/google/android/gms/internal/zzcga;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzcga;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-lez v5, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawm()Lcom/google/android/gms/internal/zzcgj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcgj;->zzayw()Lcom/google/android/gms/internal/zzcgl;

    move-result-object v1

    const-string v2, "Fetching config for blacklisted app"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzcgl;->log(Ljava/lang/String;)V

    invoke-direct {v11, v0}, Lcom/google/android/gms/internal/zzchj;->zzb(Lcom/google/android/gms/internal/zzcfe;)V

    :cond_5
    return-void

    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawm()Lcom/google/android/gms/internal/zzcgj;

    move-result-object v1

    const/4 v9, 0x2

    invoke-virtual {v1, v9}, Lcom/google/android/gms/internal/zzcgj;->zzae(I)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawm()Lcom/google/android/gms/internal/zzcgj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcgj;->zzayx()Lcom/google/android/gms/internal/zzcgl;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawh()Lcom/google/android/gms/internal/zzcgh;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/zzcgh;->zzb(Lcom/google/android/gms/internal/zzcfx;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Logging event"

    invoke-virtual {v1, v4, v3}, Lcom/google/android/gms/internal/zzcgl;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawg()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcfl;->beginTransaction()V

    :try_start_0
    invoke-direct {v11, v12}, Lcom/google/android/gms/internal/zzchj;->zzg(Lcom/google/android/gms/internal/zzcff;)V

    const-string v1, "_iap"

    iget-object v3, v0, Lcom/google/android/gms/internal/zzcfx;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "ecommerce_purchase"

    iget-object v3, v0, Lcom/google/android/gms/internal/zzcfx;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_8
    invoke-direct {v11, v15, v0}, Lcom/google/android/gms/internal/zzchj;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzcfx;)Z

    move-result v1

    if-nez v1, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawg()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcfl;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawg()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcfl;->endTransaction()V

    return-void

    :cond_9
    :try_start_1
    iget-object v1, v0, Lcom/google/android/gms/internal/zzcfx;->name:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzckn;->zzjt(Ljava/lang/String;)Z

    move-result v16

    iget-object v1, v0, Lcom/google/android/gms/internal/zzcfx;->name:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawg()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v2

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzazu()J

    move-result-wide v3

    const/4 v6, 0x1

    const/4 v8, 0x0

    const/16 v17, 0x0

    move-object v5, v15

    move/from16 v7, v16

    move v9, v1

    move-wide/from16 v30, v13

    const/4 v13, 0x0

    move/from16 v10, v17

    invoke-virtual/range {v2 .. v10}, Lcom/google/android/gms/internal/zzcfl;->zza(JLjava/lang/String;ZZZZZ)Lcom/google/android/gms/internal/zzcfm;

    move-result-object v2

    iget-wide v3, v2, Lcom/google/android/gms/internal/zzcfm;->zziwd:J

    sget-object v5, Lcom/google/android/gms/internal/zzcfz;->zzixs:Lcom/google/android/gms/internal/zzcga;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzcga;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-long v5, v5

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x3e8

    const-wide/16 v7, 0x1

    const-wide/16 v9, 0x0

    cmp-long v14, v3, v9

    if-lez v14, :cond_b

    rem-long/2addr v3, v5

    cmp-long v0, v3, v7

    if-nez v0, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawm()Lcom/google/android/gms/internal/zzcgj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcgj;->zzayr()Lcom/google/android/gms/internal/zzcgl;

    move-result-object v0

    const-string v1, "Data loss. Too many events logged. appId, count"

    invoke-static {v15}, Lcom/google/android/gms/internal/zzcgj;->zzje(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    iget-wide v4, v2, Lcom/google/android/gms/internal/zzcfm;->zziwd:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v3, v2}, Lcom/google/android/gms/internal/zzcgl;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawg()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcfl;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawg()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcfl;->endTransaction()V

    return-void

    :cond_b
    if-eqz v16, :cond_d

    :try_start_2
    iget-wide v3, v2, Lcom/google/android/gms/internal/zzcfm;->zziwc:J

    sget-object v14, Lcom/google/android/gms/internal/zzcfz;->zzixu:Lcom/google/android/gms/internal/zzcga;

    invoke-virtual {v14}, Lcom/google/android/gms/internal/zzcga;->get()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    int-to-long v13, v14

    sub-long/2addr v3, v13

    cmp-long v13, v3, v9

    if-lez v13, :cond_d

    rem-long/2addr v3, v5

    cmp-long v1, v3, v7

    if-nez v1, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawm()Lcom/google/android/gms/internal/zzcgj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcgj;->zzayr()Lcom/google/android/gms/internal/zzcgl;

    move-result-object v1

    const-string v3, "Data loss. Too many public events logged. appId, count"

    invoke-static {v15}, Lcom/google/android/gms/internal/zzcgj;->zzje(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    iget-wide v5, v2, Lcom/google/android/gms/internal/zzcfm;->zziwc:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v3, v4, v2}, Lcom/google/android/gms/internal/zzcgl;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawi()Lcom/google/android/gms/internal/zzckn;

    move-result-object v2

    const/16 v4, 0x10

    const-string v5, "_ev"

    iget-object v6, v0, Lcom/google/android/gms/internal/zzcfx;->name:Ljava/lang/String;

    const/4 v7, 0x0

    move-object v3, v15

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/internal/zzckn;->zza(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawg()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcfl;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawg()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcfl;->endTransaction()V

    return-void

    :cond_d
    if-eqz v1, :cond_f

    :try_start_3
    iget-wide v3, v2, Lcom/google/android/gms/internal/zzcfm;->zziwf:J

    iget-object v1, v11, Lcom/google/android/gms/internal/zzchj;->zzjcb:Lcom/google/android/gms/internal/zzcfk;

    iget-object v5, v12, Lcom/google/android/gms/internal/zzcff;->packageName:Ljava/lang/String;

    sget-object v6, Lcom/google/android/gms/internal/zzcfz;->zzixt:Lcom/google/android/gms/internal/zzcga;

    invoke-virtual {v1, v5, v6}, Lcom/google/android/gms/internal/zzcfk;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzcga;)I

    move-result v1

    const v5, 0xf4240

    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v13, 0x0

    invoke-static {v13, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-long v5, v1

    sub-long/2addr v3, v5

    cmp-long v1, v3, v9

    if-lez v1, :cond_10

    cmp-long v0, v3, v7

    if-nez v0, :cond_e

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawm()Lcom/google/android/gms/internal/zzcgj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcgj;->zzayr()Lcom/google/android/gms/internal/zzcgl;

    move-result-object v0

    const-string v1, "Too many error events logged. appId, count"

    invoke-static {v15}, Lcom/google/android/gms/internal/zzcgj;->zzje(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    iget-wide v4, v2, Lcom/google/android/gms/internal/zzcfm;->zziwf:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v3, v2}, Lcom/google/android/gms/internal/zzcgl;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawg()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcfl;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawg()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcfl;->endTransaction()V

    return-void

    :cond_f
    const/4 v13, 0x0

    :cond_10
    :try_start_4
    iget-object v1, v0, Lcom/google/android/gms/internal/zzcfx;->zziwy:Lcom/google/android/gms/internal/zzcfu;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcfu;->zzayl()Landroid/os/Bundle;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawi()Lcom/google/android/gms/internal/zzckn;

    move-result-object v1

    const-string v2, "_o"

    iget-object v3, v0, Lcom/google/android/gms/internal/zzcfx;->zzivk:Ljava/lang/String;

    invoke-virtual {v1, v14, v2, v3}, Lcom/google/android/gms/internal/zzckn;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawi()Lcom/google/android/gms/internal/zzckn;

    move-result-object v1

    invoke-virtual {v1, v15}, Lcom/google/android/gms/internal/zzckn;->zzkd(Ljava/lang/String;)Z

    move-result v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const-string v6, "_r"

    if-eqz v1, :cond_11

    :try_start_5
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawi()Lcom/google/android/gms/internal/zzckn;

    move-result-object v1

    const-string v2, "_dbg"

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v14, v2, v3}, Lcom/google/android/gms/internal/zzckn;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawi()Lcom/google/android/gms/internal/zzckn;

    move-result-object v1

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v14, v6, v2}, Lcom/google/android/gms/internal/zzckn;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawg()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v1

    invoke-virtual {v1, v15}, Lcom/google/android/gms/internal/zzcfl;->zziw(Ljava/lang/String;)J

    move-result-wide v1

    cmp-long v3, v1, v9

    if-lez v3, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawm()Lcom/google/android/gms/internal/zzcgj;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzcgj;->zzayt()Lcom/google/android/gms/internal/zzcgl;

    move-result-object v3

    const-string v4, "Data lost. Too many events stored on disk, deleted. appId"

    invoke-static {v15}, Lcom/google/android/gms/internal/zzcgj;->zzje(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v4, v5, v1}, Lcom/google/android/gms/internal/zzcgl;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_12
    new-instance v8, Lcom/google/android/gms/internal/zzcfs;

    iget-object v3, v0, Lcom/google/android/gms/internal/zzcfx;->zzivk:Ljava/lang/String;

    iget-object v5, v0, Lcom/google/android/gms/internal/zzcfx;->name:Ljava/lang/String;

    iget-wide v0, v0, Lcom/google/android/gms/internal/zzcfx;->zziwz:J

    const-wide/16 v17, 0x0

    move-wide/from16 v19, v0

    move-object v1, v8

    move-object/from16 v2, p0

    move-object v4, v15

    move-object v0, v6

    move-wide/from16 v6, v19

    move-object v10, v8

    move-wide/from16 v8, v17

    move-object v13, v10

    move-object v10, v14

    invoke-direct/range {v1 .. v10}, Lcom/google/android/gms/internal/zzcfs;-><init>(Lcom/google/android/gms/internal/zzchj;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLandroid/os/Bundle;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawg()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v1

    iget-object v2, v13, Lcom/google/android/gms/internal/zzcfs;->mName:Ljava/lang/String;

    invoke-virtual {v1, v15, v2}, Lcom/google/android/gms/internal/zzcfl;->zzae(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/zzcft;

    move-result-object v1

    if-nez v1, :cond_14

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawg()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v1

    invoke-virtual {v1, v15}, Lcom/google/android/gms/internal/zzcfl;->zziz(Ljava/lang/String;)J

    move-result-wide v1

    const-wide/16 v3, 0x1f4

    cmp-long v5, v1, v3

    if-ltz v5, :cond_13

    if-eqz v16, :cond_13

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawm()Lcom/google/android/gms/internal/zzcgj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcgj;->zzayr()Lcom/google/android/gms/internal/zzcgl;

    move-result-object v0

    const-string v1, "Too many event names used, ignoring event. appId, name, supported count"

    invoke-static {v15}, Lcom/google/android/gms/internal/zzcgj;->zzje(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawh()Lcom/google/android/gms/internal/zzcgh;

    move-result-object v3

    iget-object v4, v13, Lcom/google/android/gms/internal/zzcfs;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/zzcgh;->zzjb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x1f4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/zzcgl;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawi()Lcom/google/android/gms/internal/zzckn;

    move-result-object v2

    const/16 v4, 0x8

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, v15

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/internal/zzckn;->zza(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawg()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcfl;->endTransaction()V

    return-void

    :cond_13
    :try_start_6
    new-instance v1, Lcom/google/android/gms/internal/zzcft;

    iget-object v2, v13, Lcom/google/android/gms/internal/zzcfs;->mName:Ljava/lang/String;

    const-wide/16 v18, 0x0

    const-wide/16 v20, 0x0

    iget-wide v3, v13, Lcom/google/android/gms/internal/zzcfs;->zzffr:J

    const-wide/16 v24, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object v5, v15

    move-object v15, v1

    move-object/from16 v16, v5

    move-object/from16 v17, v2

    move-wide/from16 v22, v3

    invoke-direct/range {v15 .. v28}, Lcom/google/android/gms/internal/zzcft;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    move-object v8, v13

    goto :goto_0

    :cond_14
    iget-wide v2, v1, Lcom/google/android/gms/internal/zzcft;->zziwr:J

    invoke-virtual {v13, v11, v2, v3}, Lcom/google/android/gms/internal/zzcfs;->zza(Lcom/google/android/gms/internal/zzchj;J)Lcom/google/android/gms/internal/zzcfs;

    move-result-object v8

    iget-wide v2, v8, Lcom/google/android/gms/internal/zzcfs;->zzffr:J

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/zzcft;->zzba(J)Lcom/google/android/gms/internal/zzcft;

    move-result-object v1

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawg()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/zzcfl;->zza(Lcom/google/android/gms/internal/zzcft;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawl()Lcom/google/android/gms/internal/zzche;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcih;->zzut()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzwu()V

    invoke-static {v8}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v8, Lcom/google/android/gms/internal/zzcfs;->mAppId:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzbq;->zzgh(Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, v8, Lcom/google/android/gms/internal/zzcfs;->mAppId:Ljava/lang/String;

    iget-object v2, v12, Lcom/google/android/gms/internal/zzcff;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzbq;->checkArgument(Z)V

    new-instance v1, Lcom/google/android/gms/internal/zzclb;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzclb;-><init>()V

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/gms/internal/zzclb;->zzjit:Ljava/lang/Integer;

    const-string v2, "android"

    iput-object v2, v1, Lcom/google/android/gms/internal/zzclb;->zzjjb:Ljava/lang/String;

    iget-object v2, v12, Lcom/google/android/gms/internal/zzcff;->packageName:Ljava/lang/String;

    iput-object v2, v1, Lcom/google/android/gms/internal/zzclb;->zzch:Ljava/lang/String;

    iget-object v2, v12, Lcom/google/android/gms/internal/zzcff;->zziuy:Ljava/lang/String;

    iput-object v2, v1, Lcom/google/android/gms/internal/zzclb;->zziuy:Ljava/lang/String;

    iget-object v2, v12, Lcom/google/android/gms/internal/zzcff;->zzicq:Ljava/lang/String;

    iput-object v2, v1, Lcom/google/android/gms/internal/zzclb;->zzicq:Ljava/lang/String;

    iget-wide v2, v12, Lcom/google/android/gms/internal/zzcff;->zzive:J

    const-wide/32 v4, -0x80000000

    const/4 v6, 0x0

    cmp-long v7, v2, v4

    if-nez v7, :cond_15

    move-object v2, v6

    goto :goto_1

    :cond_15
    iget-wide v2, v12, Lcom/google/android/gms/internal/zzcff;->zzive:J

    long-to-int v3, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_1
    iput-object v2, v1, Lcom/google/android/gms/internal/zzclb;->zzjjo:Ljava/lang/Integer;

    iget-wide v2, v12, Lcom/google/android/gms/internal/zzcff;->zziuz:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/gms/internal/zzclb;->zzjjf:Ljava/lang/Long;

    iget-object v2, v12, Lcom/google/android/gms/internal/zzcff;->zziux:Ljava/lang/String;

    iput-object v2, v1, Lcom/google/android/gms/internal/zzclb;->zziux:Ljava/lang/String;

    iget-wide v2, v12, Lcom/google/android/gms/internal/zzcff;->zziva:J

    const-wide/16 v4, 0x0

    cmp-long v7, v2, v4

    if-nez v7, :cond_16

    move-object v2, v6

    goto :goto_2

    :cond_16
    iget-wide v2, v12, Lcom/google/android/gms/internal/zzcff;->zziva:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    :goto_2
    iput-object v2, v1, Lcom/google/android/gms/internal/zzclb;->zzjjk:Ljava/lang/Long;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawn()Lcom/google/android/gms/internal/zzcgu;

    move-result-object v2

    iget-object v3, v12, Lcom/google/android/gms/internal/zzcff;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzcgu;->zzjg(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v2

    if-eqz v2, :cond_17

    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_17

    iget-boolean v3, v12, Lcom/google/android/gms/internal/zzcff;->zzivj:Z

    if-eqz v3, :cond_1a

    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iput-object v3, v1, Lcom/google/android/gms/internal/zzclb;->zzjjh:Ljava/lang/String;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    iput-object v2, v1, Lcom/google/android/gms/internal/zzclb;->zzjji:Ljava/lang/Boolean;

    goto :goto_4

    :cond_17
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawc()Lcom/google/android/gms/internal/zzcfr;

    move-result-object v2

    iget-object v3, v11, Lcom/google/android/gms/internal/zzchj;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzcfr;->zzdt(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1a

    iget-object v2, v11, Lcom/google/android/gms/internal/zzchj;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "android_id"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_18

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawm()Lcom/google/android/gms/internal/zzcgj;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcgj;->zzayt()Lcom/google/android/gms/internal/zzcgl;

    move-result-object v2

    const-string v3, "null secure ID. appId"

    iget-object v7, v1, Lcom/google/android/gms/internal/zzclb;->zzch:Ljava/lang/String;

    invoke-static {v7}, Lcom/google/android/gms/internal/zzcgj;->zzje(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v2, v3, v7}, Lcom/google/android/gms/internal/zzcgl;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "null"

    goto :goto_3

    :cond_18
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_19

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawm()Lcom/google/android/gms/internal/zzcgj;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzcgj;->zzayt()Lcom/google/android/gms/internal/zzcgl;

    move-result-object v3

    const-string v7, "empty secure ID. appId"

    iget-object v9, v1, Lcom/google/android/gms/internal/zzclb;->zzch:Ljava/lang/String;

    invoke-static {v9}, Lcom/google/android/gms/internal/zzcgj;->zzje(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v3, v7, v9}, Lcom/google/android/gms/internal/zzcgl;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_19
    :goto_3
    iput-object v2, v1, Lcom/google/android/gms/internal/zzclb;->zzjjr:Ljava/lang/String;

    :cond_1a
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawc()Lcom/google/android/gms/internal/zzcfr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcii;->zzwu()V

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v2, v1, Lcom/google/android/gms/internal/zzclb;->zzjjc:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawc()Lcom/google/android/gms/internal/zzcfr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcii;->zzwu()V

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v2, v1, Lcom/google/android/gms/internal/zzclb;->zzcv:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawc()Lcom/google/android/gms/internal/zzcfr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcfr;->zzayi()J

    move-result-wide v2

    long-to-int v3, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/gms/internal/zzclb;->zzjje:Ljava/lang/Integer;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawc()Lcom/google/android/gms/internal/zzcfr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcfr;->zzayj()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/gms/internal/zzclb;->zzjjd:Ljava/lang/String;

    iput-object v6, v1, Lcom/google/android/gms/internal/zzclb;->zzjjg:Ljava/lang/Long;

    iput-object v6, v1, Lcom/google/android/gms/internal/zzclb;->zzjiw:Ljava/lang/Long;

    iput-object v6, v1, Lcom/google/android/gms/internal/zzclb;->zzjix:Ljava/lang/Long;

    iput-object v6, v1, Lcom/google/android/gms/internal/zzclb;->zzjiy:Ljava/lang/Long;

    iget-wide v2, v12, Lcom/google/android/gms/internal/zzcff;->zzivg:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/gms/internal/zzclb;->zzfhr:Ljava/lang/Long;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-static {}, Lcom/google/android/gms/internal/zzcfk;->zzaxs()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawb()Lcom/google/android/gms/internal/zzcge;

    iput-object v6, v1, Lcom/google/android/gms/internal/zzclb;->zzjjt:Ljava/lang/String;

    :cond_1b
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawg()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v2

    iget-object v3, v12, Lcom/google/android/gms/internal/zzcff;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzcfl;->zziv(Ljava/lang/String;)Lcom/google/android/gms/internal/zzcfe;

    move-result-object v2

    if-nez v2, :cond_1c

    new-instance v2, Lcom/google/android/gms/internal/zzcfe;

    iget-object v3, v12, Lcom/google/android/gms/internal/zzcff;->packageName:Ljava/lang/String;

    invoke-direct {v2, v11, v3}, Lcom/google/android/gms/internal/zzcfe;-><init>(Lcom/google/android/gms/internal/zzchj;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawb()Lcom/google/android/gms/internal/zzcge;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzcge;->zzayn()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzcfe;->zzil(Ljava/lang/String;)V

    iget-object v3, v12, Lcom/google/android/gms/internal/zzcff;->zzivf:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzcfe;->zzio(Ljava/lang/String;)V

    iget-object v3, v12, Lcom/google/android/gms/internal/zzcff;->zziux:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzcfe;->zzim(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawn()Lcom/google/android/gms/internal/zzcgu;

    move-result-object v3

    iget-object v6, v12, Lcom/google/android/gms/internal/zzcff;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v6}, Lcom/google/android/gms/internal/zzcgu;->zzjh(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzcfe;->zzin(Ljava/lang/String;)V

    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/internal/zzcfe;->zzap(J)V

    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/internal/zzcfe;->zzak(J)V

    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/internal/zzcfe;->zzal(J)V

    iget-object v3, v12, Lcom/google/android/gms/internal/zzcff;->zzicq:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzcfe;->setAppVersion(Ljava/lang/String;)V

    iget-wide v6, v12, Lcom/google/android/gms/internal/zzcff;->zzive:J

    invoke-virtual {v2, v6, v7}, Lcom/google/android/gms/internal/zzcfe;->zzam(J)V

    iget-object v3, v12, Lcom/google/android/gms/internal/zzcff;->zziuy:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzcfe;->zzip(Ljava/lang/String;)V

    iget-wide v6, v12, Lcom/google/android/gms/internal/zzcff;->zziuz:J

    invoke-virtual {v2, v6, v7}, Lcom/google/android/gms/internal/zzcfe;->zzan(J)V

    iget-wide v6, v12, Lcom/google/android/gms/internal/zzcff;->zziva:J

    invoke-virtual {v2, v6, v7}, Lcom/google/android/gms/internal/zzcfe;->zzao(J)V

    iget-boolean v3, v12, Lcom/google/android/gms/internal/zzcff;->zzivc:Z

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzcfe;->setMeasurementEnabled(Z)V

    iget-wide v6, v12, Lcom/google/android/gms/internal/zzcff;->zzivg:J

    invoke-virtual {v2, v6, v7}, Lcom/google/android/gms/internal/zzcfe;->zzay(J)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawg()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/zzcfl;->zza(Lcom/google/android/gms/internal/zzcfe;)V

    :cond_1c
    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcfe;->getAppInstanceId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/google/android/gms/internal/zzclb;->zzjjj:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcfe;->zzawr()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/gms/internal/zzclb;->zzivf:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawg()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v2

    iget-object v3, v12, Lcom/google/android/gms/internal/zzcff;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzcfl;->zziu(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Lcom/google/android/gms/internal/zzcld;

    iput-object v3, v1, Lcom/google/android/gms/internal/zzclb;->zzjiv:[Lcom/google/android/gms/internal/zzcld;

    const/4 v10, 0x0

    :goto_5
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v10, v3, :cond_1d

    new-instance v3, Lcom/google/android/gms/internal/zzcld;

    invoke-direct {v3}, Lcom/google/android/gms/internal/zzcld;-><init>()V

    iget-object v6, v1, Lcom/google/android/gms/internal/zzclb;->zzjiv:[Lcom/google/android/gms/internal/zzcld;

    aput-object v3, v6, v10

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/zzckm;

    iget-object v6, v6, Lcom/google/android/gms/internal/zzckm;->mName:Ljava/lang/String;

    iput-object v6, v3, Lcom/google/android/gms/internal/zzcld;->name:Ljava/lang/String;

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/zzckm;

    iget-wide v6, v6, Lcom/google/android/gms/internal/zzckm;->zzjgr:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iput-object v6, v3, Lcom/google/android/gms/internal/zzcld;->zzjjx:Ljava/lang/Long;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawi()Lcom/google/android/gms/internal/zzckn;

    move-result-object v6

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/zzckm;

    iget-object v7, v7, Lcom/google/android/gms/internal/zzckm;->mValue:Ljava/lang/Object;

    invoke-virtual {v6, v3, v7}, Lcom/google/android/gms/internal/zzckn;->zza(Lcom/google/android/gms/internal/zzcld;Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    :cond_1d
    :try_start_7
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawg()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/zzcfl;->zza(Lcom/google/android/gms/internal/zzclb;)J

    move-result-wide v1
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawg()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v3

    iget-object v6, v8, Lcom/google/android/gms/internal/zzcfs;->zziwo:Lcom/google/android/gms/internal/zzcfu;

    if-eqz v6, :cond_20

    iget-object v6, v8, Lcom/google/android/gms/internal/zzcfs;->zziwo:Lcom/google/android/gms/internal/zzcfu;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/zzcfu;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1e

    :goto_6
    const/4 v10, 0x1

    goto :goto_7

    :cond_1f
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawj()Lcom/google/android/gms/internal/zzchd;

    move-result-object v0

    iget-object v6, v8, Lcom/google/android/gms/internal/zzcfs;->mAppId:Ljava/lang/String;

    iget-object v7, v8, Lcom/google/android/gms/internal/zzcfs;->mName:Ljava/lang/String;

    invoke-virtual {v0, v6, v7}, Lcom/google/android/gms/internal/zzchd;->zzao(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawg()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v12

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzazu()J

    move-result-wide v13

    iget-object v15, v8, Lcom/google/android/gms/internal/zzcfs;->mAppId:Ljava/lang/String;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-virtual/range {v12 .. v20}, Lcom/google/android/gms/internal/zzcfl;->zza(JLjava/lang/String;ZZZZZ)Lcom/google/android/gms/internal/zzcfm;

    move-result-object v6

    if-eqz v0, :cond_20

    iget-wide v6, v6, Lcom/google/android/gms/internal/zzcfm;->zziwg:J

    iget-object v0, v11, Lcom/google/android/gms/internal/zzchj;->zzjcb:Lcom/google/android/gms/internal/zzcfk;

    iget-object v9, v8, Lcom/google/android/gms/internal/zzcfs;->mAppId:Ljava/lang/String;

    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/zzcfk;->zzir(Ljava/lang/String;)I

    move-result v0

    int-to-long v9, v0

    cmp-long v0, v6, v9

    if-gez v0, :cond_20

    goto :goto_6

    :cond_20
    const/4 v10, 0x0

    :goto_7
    invoke-virtual {v3, v8, v1, v2, v10}, Lcom/google/android/gms/internal/zzcfl;->zza(Lcom/google/android/gms/internal/zzcfs;JZ)Z

    move-result v0

    if-eqz v0, :cond_21

    iput-wide v4, v11, Lcom/google/android/gms/internal/zzchj;->zzjdh:J

    goto :goto_8

    :catch_0
    move-exception v0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawm()Lcom/google/android/gms/internal/zzcgj;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcgj;->zzayr()Lcom/google/android/gms/internal/zzcgl;

    move-result-object v2

    const-string v3, "Data loss. Failed to insert raw event metadata. appId"

    iget-object v1, v1, Lcom/google/android/gms/internal/zzclb;->zzch:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzcgj;->zzje(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v3, v1, v0}, Lcom/google/android/gms/internal/zzcgl;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_21
    :goto_8
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawg()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcfl;->setTransactionSuccessful()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawm()Lcom/google/android/gms/internal/zzcgj;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcgj;->zzae(I)Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawm()Lcom/google/android/gms/internal/zzcgj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcgj;->zzayx()Lcom/google/android/gms/internal/zzcgl;

    move-result-object v0

    const-string v1, "Event recorded"

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawh()Lcom/google/android/gms/internal/zzcgh;

    move-result-object v2

    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/zzcgh;->zza(Lcom/google/android/gms/internal/zzcfs;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzcgl;->zzj(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :cond_22
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawg()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcfl;->endTransaction()V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzazx()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawm()Lcom/google/android/gms/internal/zzcgj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcgj;->zzayx()Lcom/google/android/gms/internal/zzcgl;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    sub-long v1, v1, v30

    const-wide/32 v3, 0x7a120

    add-long/2addr v1, v3

    const-wide/32 v3, 0xf4240

    div-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "Background event processing time, ms"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/zzcgl;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawg()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcfl;->endTransaction()V

    goto :goto_a

    :goto_9
    throw v0

    :goto_a
    goto :goto_9
.end method

.method public static zzdu(Landroid/content/Context;)Lcom/google/android/gms/internal/zzchj;
    .locals 2

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/zzchj;->zzjca:Lcom/google/android/gms/internal/zzchj;

    if-nez v0, :cond_1

    const-class v0, Lcom/google/android/gms/internal/zzchj;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/zzchj;->zzjca:Lcom/google/android/gms/internal/zzchj;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/zzcij;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzcij;-><init>(Landroid/content/Context;)V

    new-instance p0, Lcom/google/android/gms/internal/zzchj;

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/zzchj;-><init>(Lcom/google/android/gms/internal/zzcij;)V

    sput-object p0, Lcom/google/android/gms/internal/zzchj;->zzjca:Lcom/google/android/gms/internal/zzchj;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/google/android/gms/internal/zzchj;->zzjca:Lcom/google/android/gms/internal/zzchj;

    return-object p0
.end method

.method private final zzg(Lcom/google/android/gms/internal/zzcff;)V
    .locals 8

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawl()Lcom/google/android/gms/internal/zzche;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcih;->zzut()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzwu()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzcff;->packageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbq;->zzgh(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawg()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/zzcff;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcfl;->zziv(Ljava/lang/String;)Lcom/google/android/gms/internal/zzcfe;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawn()Lcom/google/android/gms/internal/zzcgu;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/gms/internal/zzcff;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzcgu;->zzjh(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzcfe;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzcff;->packageName:Ljava/lang/String;

    invoke-direct {v0, p0, v3}, Lcom/google/android/gms/internal/zzcfe;-><init>(Lcom/google/android/gms/internal/zzchj;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawb()Lcom/google/android/gms/internal/zzcge;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzcge;->zzayn()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/zzcfe;->zzil(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcfe;->zzin(Ljava/lang/String;)V

    :goto_0
    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcfe;->zzawq()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcfe;->zzin(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawb()Lcom/google/android/gms/internal/zzcge;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcge;->zzayn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcfe;->zzil(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iget-object v3, p1, Lcom/google/android/gms/internal/zzcff;->zziux:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p1, Lcom/google/android/gms/internal/zzcff;->zziux:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcfe;->getGmpAppId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v1, p1, Lcom/google/android/gms/internal/zzcff;->zziux:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcfe;->zzim(Ljava/lang/String;)V

    const/4 v1, 0x1

    :cond_2
    iget-object v3, p1, Lcom/google/android/gms/internal/zzcff;->zzivf:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p1, Lcom/google/android/gms/internal/zzcff;->zzivf:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcfe;->zzawr()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v1, p1, Lcom/google/android/gms/internal/zzcff;->zzivf:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcfe;->zzio(Ljava/lang/String;)V

    const/4 v1, 0x1

    :cond_3
    iget-wide v3, p1, Lcom/google/android/gms/internal/zzcff;->zziuz:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-eqz v7, :cond_4

    iget-wide v3, p1, Lcom/google/android/gms/internal/zzcff;->zziuz:J

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcfe;->zzaww()J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-eqz v7, :cond_4

    iget-wide v3, p1, Lcom/google/android/gms/internal/zzcff;->zziuz:J

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/internal/zzcfe;->zzan(J)V

    const/4 v1, 0x1

    :cond_4
    iget-object v3, p1, Lcom/google/android/gms/internal/zzcff;->zzicq:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p1, Lcom/google/android/gms/internal/zzcff;->zzicq:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcfe;->zzuy()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v1, p1, Lcom/google/android/gms/internal/zzcff;->zzicq:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcfe;->setAppVersion(Ljava/lang/String;)V

    const/4 v1, 0x1

    :cond_5
    iget-wide v3, p1, Lcom/google/android/gms/internal/zzcff;->zzive:J

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcfe;->zzawu()J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-eqz v7, :cond_6

    iget-wide v3, p1, Lcom/google/android/gms/internal/zzcff;->zzive:J

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/internal/zzcfe;->zzam(J)V

    const/4 v1, 0x1

    :cond_6
    iget-object v3, p1, Lcom/google/android/gms/internal/zzcff;->zziuy:Ljava/lang/String;

    if-eqz v3, :cond_7

    iget-object v3, p1, Lcom/google/android/gms/internal/zzcff;->zziuy:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcfe;->zzawv()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    iget-object v1, p1, Lcom/google/android/gms/internal/zzcff;->zziuy:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcfe;->zzip(Ljava/lang/String;)V

    const/4 v1, 0x1

    :cond_7
    iget-wide v3, p1, Lcom/google/android/gms/internal/zzcff;->zziva:J

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcfe;->zzawx()J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-eqz v7, :cond_8

    iget-wide v3, p1, Lcom/google/android/gms/internal/zzcff;->zziva:J

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/internal/zzcfe;->zzao(J)V

    const/4 v1, 0x1

    :cond_8
    iget-boolean v3, p1, Lcom/google/android/gms/internal/zzcff;->zzivc:Z

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcfe;->zzawy()Z

    move-result v4

    if-eq v3, v4, :cond_9

    iget-boolean v1, p1, Lcom/google/android/gms/internal/zzcff;->zzivc:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcfe;->setMeasurementEnabled(Z)V

    const/4 v1, 0x1

    :cond_9
    iget-object v3, p1, Lcom/google/android/gms/internal/zzcff;->zzivb:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    iget-object v3, p1, Lcom/google/android/gms/internal/zzcff;->zzivb:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcfe;->zzaxj()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    iget-object v1, p1, Lcom/google/android/gms/internal/zzcff;->zzivb:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcfe;->zziq(Ljava/lang/String;)V

    const/4 v1, 0x1

    :cond_a
    iget-wide v3, p1, Lcom/google/android/gms/internal/zzcff;->zzivg:J

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcfe;->zzaxl()J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-eqz v7, :cond_b

    iget-wide v3, p1, Lcom/google/android/gms/internal/zzcff;->zzivg:J

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/internal/zzcfe;->zzay(J)V

    const/4 v1, 0x1

    :cond_b
    iget-boolean v3, p1, Lcom/google/android/gms/internal/zzcff;->zzivj:Z

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcfe;->zzaxm()Z

    move-result v4

    if-eq v3, v4, :cond_c

    iget-boolean p1, p1, Lcom/google/android/gms/internal/zzcff;->zzivj:Z

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzcfe;->zzbk(Z)V

    goto :goto_2

    :cond_c
    move v2, v1

    :goto_2
    if-eqz v2, :cond_d

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawg()Lcom/google/android/gms/internal/zzcfl;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzcfl;->zza(Lcom/google/android/gms/internal/zzcfe;)V

    :cond_d
    return-void
.end method

.method private final zzh(Ljava/lang/String;J)Z
    .locals 38

    move-object/from16 v1, p0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawg()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcfl;->beginTransaction()V

    :try_start_0
    new-instance v2, Lcom/google/android/gms/internal/zzchj$zza;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lcom/google/android/gms/internal/zzchj$zza;-><init>(Lcom/google/android/gms/internal/zzchj;Lcom/google/android/gms/internal/zzchk;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawg()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v4

    iget-wide v5, v1, Lcom/google/android/gms/internal/zzchj;->zzjdg:J

    invoke-static {v2}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzcih;->zzut()V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzcii;->zzwu()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    const-wide/16 v7, -0x1

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v11, 0x1

    :try_start_1
    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzcfl;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v15

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    const-string v13, ""

    if-eqz v12, :cond_3

    cmp-long v12, v5, v7

    if-eqz v12, :cond_0

    :try_start_2
    new-array v12, v9, [Ljava/lang/String;

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v10

    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v11
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v0

    goto/16 :goto_2a

    :catch_0
    move-exception v0

    move-object v5, v0

    move-object v6, v3

    goto/16 :goto_8

    :cond_0
    :try_start_3
    new-array v12, v11, [Ljava/lang/String;

    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v10
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_a
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    :goto_0
    cmp-long v14, v5, v7

    if-eqz v14, :cond_1

    :try_start_4
    const-string v13, "rowid <= ? and "
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_1
    :try_start_5
    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    add-int/lit16 v14, v14, 0x94

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v14}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v14, "select app_id, metadata_fingerprint from raw_events where "

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "app_id in (select app_id from apps where config_fetched_time >= ?) order by rowid limit 1;"

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3, v12}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_a
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    :try_start_6
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v12
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_9
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-nez v12, :cond_2

    if-eqz v3, :cond_c

    :goto_1
    :try_start_7
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    goto/16 :goto_9

    :cond_2
    :try_start_8
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12
    :try_end_8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8 .. :try_end_8} :catch_9
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_9
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-object/from16 v21, v3

    move-object v3, v12

    move-object/from16 v22, v13

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v5, v0

    move-object v6, v3

    move-object v3, v12

    goto/16 :goto_8

    :cond_3
    cmp-long v3, v5, v7

    if-eqz v3, :cond_4

    :try_start_a
    new-array v3, v9, [Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v12, v3, v10

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v3, v11

    goto :goto_2

    :cond_4
    new-array v3, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v12, v3, v10

    :goto_2
    cmp-long v12, v5, v7

    if-eqz v12, :cond_5

    const-string v13, " and rowid <= ?"

    :cond_5
    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit8 v12, v12, 0x54

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14, v12}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v12, "select metadata_fingerprint from raw_events where app_id = ?"

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " order by rowid limit 1;"

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v15, v12, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a .. :try_end_a} :catch_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    :try_start_b
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v12

    if-nez v12, :cond_6

    if-eqz v3, :cond_c

    goto :goto_1

    :cond_6
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_b .. :try_end_b} :catch_9
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    move-object/from16 v21, v3

    move-object/from16 v22, v13

    const/4 v3, 0x0

    :goto_3
    :try_start_c
    const-string v13, "raw_events_metadata"

    new-array v14, v11, [Ljava/lang/String;

    const-string v12, "metadata"

    aput-object v12, v14, v10

    const-string v16, "app_id = ? and metadata_fingerprint = ?"

    new-array v12, v9, [Ljava/lang/String;

    aput-object v3, v12, v10

    aput-object v22, v12, v11

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-string v19, "rowid"

    const-string v20, "2"

    move-object/from16 v23, v12

    move-object v12, v15

    move-object/from16 v24, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v23

    invoke-virtual/range {v12 .. v20}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15
    :try_end_c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c .. :try_end_c} :catch_8
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    :try_start_d
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v12
    :try_end_d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_d .. :try_end_d} :catch_7
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    if-nez v12, :cond_7

    :try_start_e
    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzcih;->zzawm()Lcom/google/android/gms/internal/zzcgj;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzcgj;->zzayr()Lcom/google/android/gms/internal/zzcgl;

    move-result-object v5

    const-string v6, "Raw event metadata record is missing. appId"

    invoke-static {v3}, Lcom/google/android/gms/internal/zzcgj;->zzje(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v5, v6, v12}, Lcom/google/android/gms/internal/zzcgl;->zzj(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_e .. :try_end_e} :catch_2
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    if-eqz v15, :cond_c

    :try_start_f
    invoke-interface {v15}, Landroid/database/Cursor;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    goto/16 :goto_9

    :catchall_1
    move-exception v0

    move-object v1, v0

    move-object v3, v15

    goto/16 :goto_2a

    :catch_2
    move-exception v0

    move-object v5, v0

    move-object v6, v15

    goto/16 :goto_8

    :cond_7
    :try_start_10
    invoke-interface {v15, v10}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v12

    array-length v13, v12

    invoke-static {v12, v10, v13}, Lcom/google/android/gms/internal/zzfhb;->zzn([BII)Lcom/google/android/gms/internal/zzfhb;

    move-result-object v12

    new-instance v13, Lcom/google/android/gms/internal/zzclb;

    invoke-direct {v13}, Lcom/google/android/gms/internal/zzclb;-><init>()V
    :try_end_10
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_10 .. :try_end_10} :catch_7
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    :try_start_11
    invoke-virtual {v13, v12}, Lcom/google/android/gms/internal/zzfhk;->zza(Lcom/google/android/gms/internal/zzfhb;)Lcom/google/android/gms/internal/zzfhk;
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_11 .. :try_end_11} :catch_7
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    :try_start_12
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v12
    :try_end_12
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_12 .. :try_end_12} :catch_7
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    if-eqz v12, :cond_8

    :try_start_13
    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzcih;->zzawm()Lcom/google/android/gms/internal/zzcgj;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/android/gms/internal/zzcgj;->zzayt()Lcom/google/android/gms/internal/zzcgl;

    move-result-object v12

    const-string v14, "Get multiple raw event metadata records, expected one. appId"

    invoke-static {v3}, Lcom/google/android/gms/internal/zzcgj;->zzje(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v12, v14, v9}, Lcom/google/android/gms/internal/zzcgl;->zzj(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_13
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_13 .. :try_end_13} :catch_2
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    :cond_8
    :try_start_14
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    invoke-interface {v2, v13}, Lcom/google/android/gms/internal/zzcfn;->zzb(Lcom/google/android/gms/internal/zzclb;)V
    :try_end_14
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_14 .. :try_end_14} :catch_7
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    const/4 v9, 0x3

    cmp-long v12, v5, v7

    if-eqz v12, :cond_9

    :try_start_15
    const-string v12, "app_id = ? and metadata_fingerprint = ? and rowid <= ?"

    new-array v13, v9, [Ljava/lang/String;

    aput-object v3, v13, v10

    aput-object v22, v13, v11

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    aput-object v5, v13, v6
    :try_end_15
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_15 .. :try_end_15} :catch_2
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    move-object v5, v12

    move-object/from16 v16, v13

    goto :goto_4

    :cond_9
    :try_start_16
    const-string v5, "app_id = ? and metadata_fingerprint = ?"

    const/4 v6, 0x2

    new-array v12, v6, [Ljava/lang/String;

    aput-object v3, v12, v10

    aput-object v22, v12, v11

    move-object/from16 v16, v12

    :goto_4
    const-string v13, "raw_events"

    const/4 v6, 0x4

    new-array v14, v6, [Ljava/lang/String;

    const-string v6, "rowid"

    aput-object v6, v14, v10

    const-string v6, "name"

    aput-object v6, v14, v11

    const-string v6, "timestamp"

    const/4 v12, 0x2

    aput-object v6, v14, v12

    const-string v6, "data"

    aput-object v6, v14, v9

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-string v19, "rowid"
    :try_end_16
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_16 .. :try_end_16} :catch_7
    .catchall {:try_start_16 .. :try_end_16} :catchall_3

    const/16 v20, 0x0

    move-object/from16 v12, v24

    move-object v6, v15

    move-object v15, v5

    :try_start_17
    invoke-virtual/range {v12 .. v20}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5
    :try_end_17
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_17 .. :try_end_17} :catch_6
    .catchall {:try_start_17 .. :try_end_17} :catchall_6

    :try_start_18
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-nez v6, :cond_a

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzcih;->zzawm()Lcom/google/android/gms/internal/zzcgj;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/internal/zzcgj;->zzayt()Lcom/google/android/gms/internal/zzcgl;

    move-result-object v6

    const-string v9, "Raw event data disappeared while in transaction. appId"

    invoke-static {v3}, Lcom/google/android/gms/internal/zzcgj;->zzje(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v6, v9, v12}, Lcom/google/android/gms/internal/zzcgl;->zzj(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_18
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_18 .. :try_end_18} :catch_4
    .catchall {:try_start_18 .. :try_end_18} :catchall_2

    if-eqz v5, :cond_c

    :goto_5
    :try_start_19
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_7

    goto/16 :goto_9

    :cond_a
    :try_start_1a
    invoke-interface {v5, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    invoke-interface {v5, v9}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v6

    array-length v14, v6

    invoke-static {v6, v10, v14}, Lcom/google/android/gms/internal/zzfhb;->zzn([BII)Lcom/google/android/gms/internal/zzfhb;

    move-result-object v6

    new-instance v14, Lcom/google/android/gms/internal/zzcky;

    invoke-direct {v14}, Lcom/google/android/gms/internal/zzcky;-><init>()V
    :try_end_1a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1a .. :try_end_1a} :catch_4
    .catchall {:try_start_1a .. :try_end_1a} :catchall_2

    :try_start_1b
    invoke-virtual {v14, v6}, Lcom/google/android/gms/internal/zzfhk;->zza(Lcom/google/android/gms/internal/zzfhb;)Lcom/google/android/gms/internal/zzfhk;
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1b .. :try_end_1b} :catch_4
    .catchall {:try_start_1b .. :try_end_1b} :catchall_2

    :try_start_1c
    invoke-interface {v5, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v14, Lcom/google/android/gms/internal/zzcky;->name:Ljava/lang/String;

    const/4 v6, 0x2

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iput-object v6, v14, Lcom/google/android/gms/internal/zzcky;->zzjin:Ljava/lang/Long;

    invoke-interface {v2, v12, v13, v14}, Lcom/google/android/gms/internal/zzcfn;->zza(JLcom/google/android/gms/internal/zzcky;)Z

    move-result v6

    if-nez v6, :cond_b

    if-eqz v5, :cond_c

    goto :goto_5

    :catch_3
    move-exception v0

    move-object v6, v0

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzcih;->zzawm()Lcom/google/android/gms/internal/zzcgj;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/android/gms/internal/zzcgj;->zzayr()Lcom/google/android/gms/internal/zzcgl;

    move-result-object v12

    const-string v13, "Data loss. Failed to merge raw event. appId"

    invoke-static {v3}, Lcom/google/android/gms/internal/zzcgj;->zzje(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v12, v13, v14, v6}, Lcom/google/android/gms/internal/zzcgl;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_b
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6
    :try_end_1c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1c .. :try_end_1c} :catch_4
    .catchall {:try_start_1c .. :try_end_1c} :catchall_2

    if-nez v6, :cond_a

    if-eqz v5, :cond_c

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object v1, v0

    move-object v3, v5

    goto/16 :goto_2a

    :catch_4
    move-exception v0

    move-object v6, v5

    goto :goto_7

    :catch_5
    move-exception v0

    move-object v6, v15

    move-object v5, v0

    :try_start_1d
    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzcih;->zzawm()Lcom/google/android/gms/internal/zzcgj;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/gms/internal/zzcgj;->zzayr()Lcom/google/android/gms/internal/zzcgl;

    move-result-object v9

    const-string v12, "Data loss. Failed to merge raw event metadata. appId"

    invoke-static {v3}, Lcom/google/android/gms/internal/zzcgj;->zzje(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v9, v12, v13, v5}, Lcom/google/android/gms/internal/zzcgl;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1d .. :try_end_1d} :catch_6
    .catchall {:try_start_1d .. :try_end_1d} :catchall_6

    if-eqz v6, :cond_c

    :goto_6
    :try_start_1e
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_7

    goto :goto_9

    :catch_6
    move-exception v0

    goto :goto_7

    :catchall_3
    move-exception v0

    move-object v6, v15

    goto/16 :goto_29

    :catch_7
    move-exception v0

    move-object v6, v15

    :goto_7
    move-object v5, v0

    goto :goto_8

    :catchall_4
    move-exception v0

    move-object v1, v0

    move-object/from16 v3, v21

    goto/16 :goto_2a

    :catch_8
    move-exception v0

    move-object v5, v0

    move-object/from16 v6, v21

    goto :goto_8

    :catch_9
    move-exception v0

    move-object v5, v0

    move-object v6, v3

    const/4 v3, 0x0

    goto :goto_8

    :catchall_5
    move-exception v0

    move-object v1, v0

    const/4 v3, 0x0

    goto/16 :goto_2a

    :catch_a
    move-exception v0

    move-object v5, v0

    const/4 v3, 0x0

    const/4 v6, 0x0

    :goto_8
    :try_start_1f
    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzcih;->zzawm()Lcom/google/android/gms/internal/zzcgj;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzcgj;->zzayr()Lcom/google/android/gms/internal/zzcgl;

    move-result-object v4

    const-string v9, "Data loss. Error selecting raw event. appId"

    invoke-static {v3}, Lcom/google/android/gms/internal/zzcgj;->zzje(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v4, v9, v3, v5}, Lcom/google/android/gms/internal/zzcgl;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_6

    if-eqz v6, :cond_c

    goto :goto_6

    :cond_c
    :goto_9
    :try_start_20
    iget-object v3, v2, Lcom/google/android/gms/internal/zzchj$zza;->zzaof:Ljava/util/List;

    if-eqz v3, :cond_e

    iget-object v3, v2, Lcom/google/android/gms/internal/zzchj$zza;->zzaof:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_d

    goto :goto_a

    :cond_d
    const/4 v3, 0x0

    goto :goto_b

    :cond_e
    :goto_a
    const/4 v3, 0x1

    :goto_b
    if-nez v3, :cond_4a

    iget-object v3, v2, Lcom/google/android/gms/internal/zzchj$zza;->zzjdn:Lcom/google/android/gms/internal/zzclb;

    iget-object v4, v2, Lcom/google/android/gms/internal/zzchj$zza;->zzaof:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Lcom/google/android/gms/internal/zzcky;

    iput-object v4, v3, Lcom/google/android/gms/internal/zzclb;->zzjiu:[Lcom/google/android/gms/internal/zzcky;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_c
    iget-object v9, v2, Lcom/google/android/gms/internal/zzchj$zza;->zzaof:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v4, v9, :cond_26

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawj()Lcom/google/android/gms/internal/zzchd;

    move-result-object v9

    iget-object v14, v2, Lcom/google/android/gms/internal/zzchj$zza;->zzjdn:Lcom/google/android/gms/internal/zzclb;

    iget-object v14, v14, Lcom/google/android/gms/internal/zzclb;->zzch:Ljava/lang/String;

    iget-object v15, v2, Lcom/google/android/gms/internal/zzchj$zza;->zzaof:Ljava/util/List;

    invoke-interface {v15, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/google/android/gms/internal/zzcky;

    iget-object v15, v15, Lcom/google/android/gms/internal/zzcky;->name:Ljava/lang/String;

    invoke-virtual {v9, v14, v15}, Lcom/google/android/gms/internal/zzchd;->zzan(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_7

    const-string v14, "_err"

    if-eqz v9, :cond_11

    :try_start_21
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawm()Lcom/google/android/gms/internal/zzcgj;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/gms/internal/zzcgj;->zzayt()Lcom/google/android/gms/internal/zzcgl;

    move-result-object v9

    const-string v12, "Dropping blacklisted raw event. appId"

    iget-object v13, v2, Lcom/google/android/gms/internal/zzchj$zza;->zzjdn:Lcom/google/android/gms/internal/zzclb;

    iget-object v13, v13, Lcom/google/android/gms/internal/zzclb;->zzch:Ljava/lang/String;

    invoke-static {v13}, Lcom/google/android/gms/internal/zzcgj;->zzje(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawh()Lcom/google/android/gms/internal/zzcgh;

    move-result-object v15

    iget-object v7, v2, Lcom/google/android/gms/internal/zzchj$zza;->zzaof:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/zzcky;

    iget-object v7, v7, Lcom/google/android/gms/internal/zzcky;->name:Ljava/lang/String;

    invoke-virtual {v15, v7}, Lcom/google/android/gms/internal/zzcgh;->zzjb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v12, v13, v7}, Lcom/google/android/gms/internal/zzcgl;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawi()Lcom/google/android/gms/internal/zzckn;

    move-result-object v7

    iget-object v8, v2, Lcom/google/android/gms/internal/zzchj$zza;->zzjdn:Lcom/google/android/gms/internal/zzclb;

    iget-object v8, v8, Lcom/google/android/gms/internal/zzclb;->zzch:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/zzckn;->zzkf(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawi()Lcom/google/android/gms/internal/zzckn;

    move-result-object v7

    iget-object v8, v2, Lcom/google/android/gms/internal/zzchj$zza;->zzjdn:Lcom/google/android/gms/internal/zzclb;

    iget-object v8, v8, Lcom/google/android/gms/internal/zzclb;->zzch:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/zzckn;->zzkg(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_f

    goto :goto_d

    :cond_f
    const/4 v7, 0x0

    goto :goto_e

    :cond_10
    :goto_d
    const/4 v7, 0x1

    :goto_e
    if-nez v7, :cond_25

    iget-object v7, v2, Lcom/google/android/gms/internal/zzchj$zza;->zzaof:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/zzcky;

    iget-object v7, v7, Lcom/google/android/gms/internal/zzcky;->name:Ljava/lang/String;

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_25

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawi()Lcom/google/android/gms/internal/zzckn;

    move-result-object v24

    iget-object v7, v2, Lcom/google/android/gms/internal/zzchj$zza;->zzjdn:Lcom/google/android/gms/internal/zzclb;

    iget-object v7, v7, Lcom/google/android/gms/internal/zzclb;->zzch:Ljava/lang/String;

    const/16 v26, 0xb

    const-string v27, "_ev"

    iget-object v8, v2, Lcom/google/android/gms/internal/zzchj$zza;->zzaof:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/zzcky;

    iget-object v8, v8, Lcom/google/android/gms/internal/zzcky;->name:Ljava/lang/String;

    const/16 v29, 0x0

    move-object/from16 v25, v7

    move-object/from16 v28, v8

    invoke-virtual/range {v24 .. v29}, Lcom/google/android/gms/internal/zzckn;->zza(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_16

    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawj()Lcom/google/android/gms/internal/zzchd;

    move-result-object v7

    iget-object v8, v2, Lcom/google/android/gms/internal/zzchj$zza;->zzjdn:Lcom/google/android/gms/internal/zzclb;

    iget-object v8, v8, Lcom/google/android/gms/internal/zzclb;->zzch:Ljava/lang/String;

    iget-object v9, v2, Lcom/google/android/gms/internal/zzchj$zza;->zzaof:Ljava/util/List;

    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/zzcky;

    iget-object v9, v9, Lcom/google/android/gms/internal/zzcky;->name:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Lcom/google/android/gms/internal/zzchd;->zzao(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawi()Lcom/google/android/gms/internal/zzckn;

    iget-object v8, v2, Lcom/google/android/gms/internal/zzchj$zza;->zzaof:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/zzcky;

    iget-object v8, v8, Lcom/google/android/gms/internal/zzcky;->name:Ljava/lang/String;

    invoke-static {v8}, Lcom/google/android/gms/internal/zzckn;->zzkh(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_24

    :cond_12
    iget-object v8, v2, Lcom/google/android/gms/internal/zzchj$zza;->zzaof:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/zzcky;

    iget-object v8, v8, Lcom/google/android/gms/internal/zzcky;->zzjim:[Lcom/google/android/gms/internal/zzckz;

    if-nez v8, :cond_13

    iget-object v8, v2, Lcom/google/android/gms/internal/zzchj$zza;->zzaof:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/zzcky;

    new-array v9, v10, [Lcom/google/android/gms/internal/zzckz;

    iput-object v9, v8, Lcom/google/android/gms/internal/zzcky;->zzjim:[Lcom/google/android/gms/internal/zzckz;

    :cond_13
    iget-object v8, v2, Lcom/google/android/gms/internal/zzchj$zza;->zzaof:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/zzcky;

    iget-object v8, v8, Lcom/google/android/gms/internal/zzcky;->zzjim:[Lcom/google/android/gms/internal/zzckz;

    array-length v9, v8
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_7

    const/4 v15, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    :goto_f
    const-string v10, "_r"

    const-string v11, "_c"

    if-ge v15, v9, :cond_16

    :try_start_22
    aget-object v12, v8, v15

    iget-object v13, v12, Lcom/google/android/gms/internal/zzckz;->name:Ljava/lang/String;

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_14

    const-wide/16 v24, 0x1

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    iput-object v10, v12, Lcom/google/android/gms/internal/zzckz;->zzjiq:Ljava/lang/Long;

    const/16 v18, 0x1

    goto :goto_10

    :cond_14
    iget-object v11, v12, Lcom/google/android/gms/internal/zzckz;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_15

    const-wide/16 v10, 0x1

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    iput-object v13, v12, Lcom/google/android/gms/internal/zzckz;->zzjiq:Ljava/lang/Long;

    const/16 v19, 0x1

    :cond_15
    :goto_10
    add-int/lit8 v15, v15, 0x1

    const/4 v11, 0x1

    goto :goto_f

    :cond_16
    if-nez v18, :cond_17

    if-eqz v7, :cond_17

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawm()Lcom/google/android/gms/internal/zzcgj;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/internal/zzcgj;->zzayx()Lcom/google/android/gms/internal/zzcgl;

    move-result-object v8

    const-string v9, "Marking event as conversion"

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawh()Lcom/google/android/gms/internal/zzcgh;

    move-result-object v12

    iget-object v13, v2, Lcom/google/android/gms/internal/zzchj$zza;->zzaof:Ljava/util/List;

    invoke-interface {v13, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/gms/internal/zzcky;

    iget-object v13, v13, Lcom/google/android/gms/internal/zzcky;->name:Ljava/lang/String;

    invoke-virtual {v12, v13}, Lcom/google/android/gms/internal/zzcgh;->zzjb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v9, v12}, Lcom/google/android/gms/internal/zzcgl;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v8, v2, Lcom/google/android/gms/internal/zzchj$zza;->zzaof:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/zzcky;

    iget-object v8, v8, Lcom/google/android/gms/internal/zzcky;->zzjim:[Lcom/google/android/gms/internal/zzckz;

    iget-object v9, v2, Lcom/google/android/gms/internal/zzchj$zza;->zzaof:Ljava/util/List;

    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/zzcky;

    iget-object v9, v9, Lcom/google/android/gms/internal/zzcky;->zzjim:[Lcom/google/android/gms/internal/zzckz;

    array-length v9, v9

    const/4 v12, 0x1

    add-int/2addr v9, v12

    invoke-static {v8, v9}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lcom/google/android/gms/internal/zzckz;

    new-instance v9, Lcom/google/android/gms/internal/zzckz;

    invoke-direct {v9}, Lcom/google/android/gms/internal/zzckz;-><init>()V

    iput-object v11, v9, Lcom/google/android/gms/internal/zzckz;->name:Ljava/lang/String;

    const-wide/16 v12, 0x1

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    iput-object v15, v9, Lcom/google/android/gms/internal/zzckz;->zzjiq:Ljava/lang/Long;

    array-length v12, v8

    const/4 v13, 0x1

    sub-int/2addr v12, v13

    aput-object v9, v8, v12

    iget-object v9, v2, Lcom/google/android/gms/internal/zzchj$zza;->zzaof:Ljava/util/List;

    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/zzcky;

    iput-object v8, v9, Lcom/google/android/gms/internal/zzcky;->zzjim:[Lcom/google/android/gms/internal/zzckz;

    :cond_17
    if-nez v19, :cond_18

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawm()Lcom/google/android/gms/internal/zzcgj;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/internal/zzcgj;->zzayx()Lcom/google/android/gms/internal/zzcgl;

    move-result-object v8

    const-string v9, "Marking event as real-time"

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawh()Lcom/google/android/gms/internal/zzcgh;

    move-result-object v12

    iget-object v13, v2, Lcom/google/android/gms/internal/zzchj$zza;->zzaof:Ljava/util/List;

    invoke-interface {v13, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/gms/internal/zzcky;

    iget-object v13, v13, Lcom/google/android/gms/internal/zzcky;->name:Ljava/lang/String;

    invoke-virtual {v12, v13}, Lcom/google/android/gms/internal/zzcgh;->zzjb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v9, v12}, Lcom/google/android/gms/internal/zzcgl;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v8, v2, Lcom/google/android/gms/internal/zzchj$zza;->zzaof:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/zzcky;

    iget-object v8, v8, Lcom/google/android/gms/internal/zzcky;->zzjim:[Lcom/google/android/gms/internal/zzckz;

    iget-object v9, v2, Lcom/google/android/gms/internal/zzchj$zza;->zzaof:Ljava/util/List;

    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/zzcky;

    iget-object v9, v9, Lcom/google/android/gms/internal/zzcky;->zzjim:[Lcom/google/android/gms/internal/zzckz;

    array-length v9, v9

    const/4 v12, 0x1

    add-int/2addr v9, v12

    invoke-static {v8, v9}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lcom/google/android/gms/internal/zzckz;

    new-instance v9, Lcom/google/android/gms/internal/zzckz;

    invoke-direct {v9}, Lcom/google/android/gms/internal/zzckz;-><init>()V

    iput-object v10, v9, Lcom/google/android/gms/internal/zzckz;->name:Ljava/lang/String;

    const-wide/16 v12, 0x1

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    iput-object v12, v9, Lcom/google/android/gms/internal/zzckz;->zzjiq:Ljava/lang/Long;

    array-length v12, v8

    const/4 v13, 0x1

    sub-int/2addr v12, v13

    aput-object v9, v8, v12

    iget-object v9, v2, Lcom/google/android/gms/internal/zzchj$zza;->zzaof:Ljava/util/List;

    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/zzcky;

    iput-object v8, v9, Lcom/google/android/gms/internal/zzcky;->zzjim:[Lcom/google/android/gms/internal/zzckz;

    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawg()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v24

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzazu()J

    move-result-wide v25

    iget-object v8, v2, Lcom/google/android/gms/internal/zzchj$zza;->zzjdn:Lcom/google/android/gms/internal/zzclb;

    iget-object v8, v8, Lcom/google/android/gms/internal/zzclb;->zzch:Ljava/lang/String;

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x1

    move-object/from16 v27, v8

    invoke-virtual/range {v24 .. v32}, Lcom/google/android/gms/internal/zzcfl;->zza(JLjava/lang/String;ZZZZZ)Lcom/google/android/gms/internal/zzcfm;

    move-result-object v8

    iget-wide v8, v8, Lcom/google/android/gms/internal/zzcfm;->zziwg:J

    iget-object v12, v1, Lcom/google/android/gms/internal/zzchj;->zzjcb:Lcom/google/android/gms/internal/zzcfk;

    iget-object v13, v2, Lcom/google/android/gms/internal/zzchj$zza;->zzjdn:Lcom/google/android/gms/internal/zzclb;

    iget-object v13, v13, Lcom/google/android/gms/internal/zzclb;->zzch:Ljava/lang/String;

    invoke-virtual {v12, v13}, Lcom/google/android/gms/internal/zzcfk;->zzir(Ljava/lang/String;)I

    move-result v12

    int-to-long v12, v12

    cmp-long v15, v8, v12

    if-lez v15, :cond_1c

    iget-object v8, v2, Lcom/google/android/gms/internal/zzchj$zza;->zzaof:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/zzcky;

    const/4 v9, 0x0

    :goto_11
    iget-object v12, v8, Lcom/google/android/gms/internal/zzcky;->zzjim:[Lcom/google/android/gms/internal/zzckz;

    array-length v12, v12

    if-ge v9, v12, :cond_1d

    iget-object v12, v8, Lcom/google/android/gms/internal/zzcky;->zzjim:[Lcom/google/android/gms/internal/zzckz;

    aget-object v12, v12, v9

    iget-object v12, v12, Lcom/google/android/gms/internal/zzckz;->name:Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1b

    iget-object v10, v8, Lcom/google/android/gms/internal/zzcky;->zzjim:[Lcom/google/android/gms/internal/zzckz;

    array-length v10, v10

    const/4 v12, 0x1

    sub-int/2addr v10, v12

    new-array v12, v10, [Lcom/google/android/gms/internal/zzckz;

    if-lez v9, :cond_19

    iget-object v13, v8, Lcom/google/android/gms/internal/zzcky;->zzjim:[Lcom/google/android/gms/internal/zzckz;

    const/4 v15, 0x0

    invoke-static {v13, v15, v12, v15, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_19
    if-ge v9, v10, :cond_1a

    iget-object v13, v8, Lcom/google/android/gms/internal/zzcky;->zzjim:[Lcom/google/android/gms/internal/zzckz;

    add-int/lit8 v15, v9, 0x1

    sub-int/2addr v10, v9

    invoke-static {v13, v15, v12, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1a
    iput-object v12, v8, Lcom/google/android/gms/internal/zzcky;->zzjim:[Lcom/google/android/gms/internal/zzckz;

    goto :goto_12

    :cond_1b
    add-int/lit8 v9, v9, 0x1

    goto :goto_11

    :cond_1c
    const/4 v6, 0x1

    :cond_1d
    :goto_12
    iget-object v8, v2, Lcom/google/android/gms/internal/zzchj$zza;->zzaof:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/zzcky;

    iget-object v8, v8, Lcom/google/android/gms/internal/zzcky;->name:Ljava/lang/String;

    invoke-static {v8}, Lcom/google/android/gms/internal/zzckn;->zzjt(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_23

    if-eqz v7, :cond_23

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawg()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v24

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzazu()J

    move-result-wide v25

    iget-object v7, v2, Lcom/google/android/gms/internal/zzchj$zza;->zzjdn:Lcom/google/android/gms/internal/zzclb;

    iget-object v7, v7, Lcom/google/android/gms/internal/zzclb;->zzch:Ljava/lang/String;

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x1

    const/16 v31, 0x0

    const/16 v32, 0x0

    move-object/from16 v27, v7

    invoke-virtual/range {v24 .. v32}, Lcom/google/android/gms/internal/zzcfl;->zza(JLjava/lang/String;ZZZZZ)Lcom/google/android/gms/internal/zzcfm;

    move-result-object v7

    iget-wide v7, v7, Lcom/google/android/gms/internal/zzcfm;->zziwe:J

    iget-object v9, v1, Lcom/google/android/gms/internal/zzchj;->zzjcb:Lcom/google/android/gms/internal/zzcfk;

    iget-object v10, v2, Lcom/google/android/gms/internal/zzchj$zza;->zzjdn:Lcom/google/android/gms/internal/zzclb;

    iget-object v10, v10, Lcom/google/android/gms/internal/zzclb;->zzch:Ljava/lang/String;

    sget-object v12, Lcom/google/android/gms/internal/zzcfz;->zzixv:Lcom/google/android/gms/internal/zzcga;

    invoke-virtual {v9, v10, v12}, Lcom/google/android/gms/internal/zzcfk;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzcga;)I

    move-result v9

    int-to-long v9, v9

    cmp-long v12, v7, v9

    if-lez v12, :cond_23

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawm()Lcom/google/android/gms/internal/zzcgj;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/internal/zzcgj;->zzayt()Lcom/google/android/gms/internal/zzcgl;

    move-result-object v7

    const-string v8, "Too many conversions. Not logging as conversion. appId"

    iget-object v9, v2, Lcom/google/android/gms/internal/zzchj$zza;->zzjdn:Lcom/google/android/gms/internal/zzclb;

    iget-object v9, v9, Lcom/google/android/gms/internal/zzclb;->zzch:Ljava/lang/String;

    invoke-static {v9}, Lcom/google/android/gms/internal/zzcgj;->zzje(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/google/android/gms/internal/zzcgl;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v7, v2, Lcom/google/android/gms/internal/zzchj$zza;->zzaof:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/zzcky;

    iget-object v8, v7, Lcom/google/android/gms/internal/zzcky;->zzjim:[Lcom/google/android/gms/internal/zzckz;

    array-length v9, v8

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_13
    if-ge v12, v9, :cond_20

    aget-object v15, v8, v12

    move/from16 p2, v6

    iget-object v6, v15, Lcom/google/android/gms/internal/zzckz;->name:Ljava/lang/String;

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1e

    move-object v10, v15

    goto :goto_14

    :cond_1e
    iget-object v6, v15, Lcom/google/android/gms/internal/zzckz;->name:Ljava/lang/String;

    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1f

    const/4 v13, 0x1

    :cond_1f
    :goto_14
    add-int/lit8 v12, v12, 0x1

    move/from16 v6, p2

    goto :goto_13

    :cond_20
    move/from16 p2, v6

    if-eqz v13, :cond_21

    if-eqz v10, :cond_21

    iget-object v6, v7, Lcom/google/android/gms/internal/zzcky;->zzjim:[Lcom/google/android/gms/internal/zzckz;

    const/4 v8, 0x1

    new-array v9, v8, [Lcom/google/android/gms/internal/zzckz;

    const/4 v8, 0x0

    aput-object v10, v9, v8

    invoke-static {v6, v9}, Lcom/google/android/gms/common/util/zza;->zza([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lcom/google/android/gms/internal/zzckz;

    iput-object v6, v7, Lcom/google/android/gms/internal/zzcky;->zzjim:[Lcom/google/android/gms/internal/zzckz;

    goto :goto_15

    :cond_21
    if-eqz v10, :cond_22

    iput-object v14, v10, Lcom/google/android/gms/internal/zzckz;->name:Ljava/lang/String;

    const-wide/16 v6, 0xa

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iput-object v6, v10, Lcom/google/android/gms/internal/zzckz;->zzjiq:Ljava/lang/Long;

    goto :goto_15

    :cond_22
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawm()Lcom/google/android/gms/internal/zzcgj;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/internal/zzcgj;->zzayr()Lcom/google/android/gms/internal/zzcgl;

    move-result-object v6

    const-string v7, "Did not find conversion parameter. appId"

    iget-object v8, v2, Lcom/google/android/gms/internal/zzchj$zza;->zzjdn:Lcom/google/android/gms/internal/zzclb;

    iget-object v8, v8, Lcom/google/android/gms/internal/zzclb;->zzch:Ljava/lang/String;

    invoke-static {v8}, Lcom/google/android/gms/internal/zzcgj;->zzje(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/google/android/gms/internal/zzcgl;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_15

    :cond_23
    move/from16 p2, v6

    :goto_15
    move/from16 v6, p2

    :cond_24
    iget-object v7, v3, Lcom/google/android/gms/internal/zzclb;->zzjiu:[Lcom/google/android/gms/internal/zzcky;

    add-int/lit8 v8, v5, 0x1

    iget-object v9, v2, Lcom/google/android/gms/internal/zzchj$zza;->zzaof:Ljava/util/List;

    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/zzcky;

    aput-object v9, v7, v5

    move v5, v8

    :cond_25
    :goto_16
    add-int/lit8 v4, v4, 0x1

    const-wide/16 v7, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x1

    goto/16 :goto_c

    :cond_26
    iget-object v4, v2, Lcom/google/android/gms/internal/zzchj$zza;->zzaof:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v5, v4, :cond_27

    iget-object v4, v3, Lcom/google/android/gms/internal/zzclb;->zzjiu:[Lcom/google/android/gms/internal/zzcky;

    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/google/android/gms/internal/zzcky;

    iput-object v4, v3, Lcom/google/android/gms/internal/zzclb;->zzjiu:[Lcom/google/android/gms/internal/zzcky;

    :cond_27
    iget-object v4, v2, Lcom/google/android/gms/internal/zzchj$zza;->zzjdn:Lcom/google/android/gms/internal/zzclb;

    iget-object v4, v4, Lcom/google/android/gms/internal/zzclb;->zzch:Ljava/lang/String;

    iget-object v5, v2, Lcom/google/android/gms/internal/zzchj$zza;->zzjdn:Lcom/google/android/gms/internal/zzclb;

    iget-object v5, v5, Lcom/google/android/gms/internal/zzclb;->zzjiv:[Lcom/google/android/gms/internal/zzcld;

    iget-object v7, v3, Lcom/google/android/gms/internal/zzclb;->zzjiu:[Lcom/google/android/gms/internal/zzcky;

    invoke-direct {v1, v4, v5, v7}, Lcom/google/android/gms/internal/zzchj;->zza(Ljava/lang/String;[Lcom/google/android/gms/internal/zzcld;[Lcom/google/android/gms/internal/zzcky;)[Lcom/google/android/gms/internal/zzckx;

    move-result-object v4

    iput-object v4, v3, Lcom/google/android/gms/internal/zzclb;->zzjjn:[Lcom/google/android/gms/internal/zzckx;

    sget-object v4, Lcom/google/android/gms/internal/zzcfz;->zzixh:Lcom/google/android/gms/internal/zzcga;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzcga;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_3c

    iget-object v4, v1, Lcom/google/android/gms/internal/zzchj;->zzjcb:Lcom/google/android/gms/internal/zzcfk;

    iget-object v5, v2, Lcom/google/android/gms/internal/zzchj$zza;->zzjdn:Lcom/google/android/gms/internal/zzclb;

    iget-object v5, v5, Lcom/google/android/gms/internal/zzclb;->zzch:Ljava/lang/String;

    const-string v7, "1"

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzcih;->zzawj()Lcom/google/android/gms/internal/zzchd;

    move-result-object v4

    const-string v8, "measurement.event_sampling_enabled"

    invoke-virtual {v4, v5, v8}, Lcom/google/android/gms/internal/zzchd;->zzam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3c

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iget-object v5, v3, Lcom/google/android/gms/internal/zzclb;->zzjiu:[Lcom/google/android/gms/internal/zzcky;

    array-length v5, v5

    new-array v5, v5, [Lcom/google/android/gms/internal/zzcky;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawi()Lcom/google/android/gms/internal/zzckn;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/internal/zzckn;->zzban()Ljava/security/SecureRandom;

    move-result-object v7

    iget-object v8, v3, Lcom/google/android/gms/internal/zzclb;->zzjiu:[Lcom/google/android/gms/internal/zzcky;

    array-length v9, v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_17
    if-ge v10, v9, :cond_3a

    aget-object v12, v8, v10

    iget-object v13, v12, Lcom/google/android/gms/internal/zzcky;->name:Ljava/lang/String;

    const-string v14, "_ep"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_7

    const-string v14, "_efs"

    const-string v15, "_sr"

    if-eqz v13, :cond_2b

    :try_start_23
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawi()Lcom/google/android/gms/internal/zzckn;

    const-string v13, "_en"

    invoke-static {v12, v13}, Lcom/google/android/gms/internal/zzckn;->zza(Lcom/google/android/gms/internal/zzcky;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-interface {v4, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/google/android/gms/internal/zzcft;

    if-nez v18, :cond_28

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawg()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v1

    move-object/from16 v19, v8

    iget-object v8, v2, Lcom/google/android/gms/internal/zzchj$zza;->zzjdn:Lcom/google/android/gms/internal/zzclb;

    iget-object v8, v8, Lcom/google/android/gms/internal/zzclb;->zzch:Ljava/lang/String;

    invoke-virtual {v1, v8, v13}, Lcom/google/android/gms/internal/zzcfl;->zzae(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/zzcft;

    move-result-object v1

    invoke-interface {v4, v13, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_18

    :cond_28
    move-object/from16 v19, v8

    move-object/from16 v1, v18

    :goto_18
    iget-object v8, v1, Lcom/google/android/gms/internal/zzcft;->zziwt:Ljava/lang/Long;

    if-nez v8, :cond_2d

    iget-object v8, v1, Lcom/google/android/gms/internal/zzcft;->zziwu:Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    const-wide/16 v26, 0x1

    cmp-long v8, v24, v26

    if-lez v8, :cond_29

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawi()Lcom/google/android/gms/internal/zzckn;

    iget-object v8, v12, Lcom/google/android/gms/internal/zzcky;->zzjim:[Lcom/google/android/gms/internal/zzckz;

    iget-object v13, v1, Lcom/google/android/gms/internal/zzcft;->zziwu:Ljava/lang/Long;

    invoke-static {v8, v15, v13}, Lcom/google/android/gms/internal/zzckn;->zza([Lcom/google/android/gms/internal/zzckz;Ljava/lang/String;Ljava/lang/Object;)[Lcom/google/android/gms/internal/zzckz;

    move-result-object v8

    iput-object v8, v12, Lcom/google/android/gms/internal/zzcky;->zzjim:[Lcom/google/android/gms/internal/zzckz;

    :cond_29
    iget-object v8, v1, Lcom/google/android/gms/internal/zzcft;->zziwv:Ljava/lang/Boolean;

    if-eqz v8, :cond_2a

    iget-object v1, v1, Lcom/google/android/gms/internal/zzcft;->zziwv:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawi()Lcom/google/android/gms/internal/zzckn;

    iget-object v1, v12, Lcom/google/android/gms/internal/zzcky;->zzjim:[Lcom/google/android/gms/internal/zzckz;

    const-wide/16 v24, 0x1

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-static {v1, v14, v8}, Lcom/google/android/gms/internal/zzckn;->zza([Lcom/google/android/gms/internal/zzckz;Ljava/lang/String;Ljava/lang/Object;)[Lcom/google/android/gms/internal/zzckz;

    move-result-object v1

    iput-object v1, v12, Lcom/google/android/gms/internal/zzcky;->zzjim:[Lcom/google/android/gms/internal/zzckz;

    :cond_2a
    add-int/lit8 v1, v11, 0x1

    aput-object v12, v5, v11

    goto :goto_1a

    :cond_2b
    move-object/from16 v19, v8

    const-string v1, "_dbg"

    const-wide/16 v24, 0x1

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-static {v12, v1, v8}, Lcom/google/android/gms/internal/zzchj;->zza(Lcom/google/android/gms/internal/zzcky;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2c

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawj()Lcom/google/android/gms/internal/zzchd;

    move-result-object v1

    iget-object v8, v2, Lcom/google/android/gms/internal/zzchj$zza;->zzjdn:Lcom/google/android/gms/internal/zzclb;

    iget-object v8, v8, Lcom/google/android/gms/internal/zzclb;->zzch:Ljava/lang/String;

    iget-object v13, v12, Lcom/google/android/gms/internal/zzcky;->name:Ljava/lang/String;

    invoke-virtual {v1, v8, v13}, Lcom/google/android/gms/internal/zzchd;->zzap(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    goto :goto_19

    :cond_2c
    const/4 v1, 0x1

    :goto_19
    if-gtz v1, :cond_2e

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawm()Lcom/google/android/gms/internal/zzcgj;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/internal/zzcgj;->zzayt()Lcom/google/android/gms/internal/zzcgl;

    move-result-object v8

    const-string v13, "Sample rate must be positive. event, rate"

    iget-object v14, v12, Lcom/google/android/gms/internal/zzcky;->name:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v13, v14, v1}, Lcom/google/android/gms/internal/zzcgl;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v1, v11, 0x1

    aput-object v12, v5, v11

    :goto_1a
    move v11, v1

    :cond_2d
    move-object v13, v2

    move-object/from16 v24, v3

    move/from16 v22, v6

    move-object/from16 v25, v7

    move/from16 v18, v9

    :goto_1b
    const/4 v12, 0x0

    const-wide/16 v26, 0x1

    goto/16 :goto_1f

    :cond_2e
    iget-object v8, v12, Lcom/google/android/gms/internal/zzcky;->name:Ljava/lang/String;

    invoke-interface {v4, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/zzcft;

    if-nez v8, :cond_30

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawg()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v8

    iget-object v13, v2, Lcom/google/android/gms/internal/zzchj$zza;->zzjdn:Lcom/google/android/gms/internal/zzclb;

    iget-object v13, v13, Lcom/google/android/gms/internal/zzclb;->zzch:Ljava/lang/String;

    move/from16 v18, v9

    iget-object v9, v12, Lcom/google/android/gms/internal/zzcky;->name:Ljava/lang/String;

    invoke-virtual {v8, v13, v9}, Lcom/google/android/gms/internal/zzcfl;->zzae(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/zzcft;

    move-result-object v8

    if-nez v8, :cond_2f

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawm()Lcom/google/android/gms/internal/zzcgj;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/internal/zzcgj;->zzayt()Lcom/google/android/gms/internal/zzcgl;

    move-result-object v8

    const-string v9, "Event being bundled has no eventAggregate. appId, eventName"

    iget-object v13, v2, Lcom/google/android/gms/internal/zzchj$zza;->zzjdn:Lcom/google/android/gms/internal/zzclb;

    iget-object v13, v13, Lcom/google/android/gms/internal/zzclb;->zzch:Ljava/lang/String;

    move/from16 v22, v6

    iget-object v6, v12, Lcom/google/android/gms/internal/zzcky;->name:Ljava/lang/String;

    invoke-virtual {v8, v9, v13, v6}, Lcom/google/android/gms/internal/zzcgl;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v8, Lcom/google/android/gms/internal/zzcft;

    iget-object v6, v2, Lcom/google/android/gms/internal/zzchj$zza;->zzjdn:Lcom/google/android/gms/internal/zzclb;

    iget-object v6, v6, Lcom/google/android/gms/internal/zzclb;->zzch:Ljava/lang/String;

    iget-object v9, v12, Lcom/google/android/gms/internal/zzcky;->name:Ljava/lang/String;

    const-wide/16 v27, 0x1

    const-wide/16 v29, 0x1

    iget-object v13, v12, Lcom/google/android/gms/internal/zzcky;->zzjin:Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v31

    const-wide/16 v33, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    move-object/from16 v24, v8

    move-object/from16 v25, v6

    move-object/from16 v26, v9

    invoke-direct/range {v24 .. v37}, Lcom/google/android/gms/internal/zzcft;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    goto :goto_1c

    :cond_2f
    move/from16 v22, v6

    goto :goto_1c

    :cond_30
    move/from16 v22, v6

    move/from16 v18, v9

    :goto_1c
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawi()Lcom/google/android/gms/internal/zzckn;

    const-string v6, "_eid"

    invoke-static {v12, v6}, Lcom/google/android/gms/internal/zzckn;->zza(Lcom/google/android/gms/internal/zzcky;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    if-eqz v6, :cond_31

    const/4 v9, 0x1

    goto :goto_1d

    :cond_31
    const/4 v9, 0x0

    :goto_1d
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    const/4 v13, 0x1

    if-ne v1, v13, :cond_34

    add-int/lit8 v1, v11, 0x1

    aput-object v12, v5, v11

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_33

    iget-object v6, v8, Lcom/google/android/gms/internal/zzcft;->zziwt:Ljava/lang/Long;

    if-nez v6, :cond_32

    iget-object v6, v8, Lcom/google/android/gms/internal/zzcft;->zziwu:Ljava/lang/Long;

    if-nez v6, :cond_32

    iget-object v6, v8, Lcom/google/android/gms/internal/zzcft;->zziwv:Ljava/lang/Boolean;

    if-eqz v6, :cond_33

    :cond_32
    const/4 v6, 0x0

    invoke-virtual {v8, v6, v6, v6}, Lcom/google/android/gms/internal/zzcft;->zza(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lcom/google/android/gms/internal/zzcft;

    move-result-object v8

    iget-object v6, v12, Lcom/google/android/gms/internal/zzcky;->name:Ljava/lang/String;

    :goto_1e
    invoke-interface {v4, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_33
    move v11, v1

    move-object v13, v2

    move-object/from16 v24, v3

    move-object/from16 v25, v7

    goto/16 :goto_1b

    :cond_34
    invoke-virtual {v7, v1}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v13

    if-nez v13, :cond_36

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawi()Lcom/google/android/gms/internal/zzckn;

    iget-object v6, v12, Lcom/google/android/gms/internal/zzcky;->zzjim:[Lcom/google/android/gms/internal/zzckz;

    int-to-long v13, v1

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v6, v15, v1}, Lcom/google/android/gms/internal/zzckn;->zza([Lcom/google/android/gms/internal/zzckz;Ljava/lang/String;Ljava/lang/Object;)[Lcom/google/android/gms/internal/zzckz;

    move-result-object v1

    iput-object v1, v12, Lcom/google/android/gms/internal/zzcky;->zzjim:[Lcom/google/android/gms/internal/zzckz;

    add-int/lit8 v1, v11, 0x1

    aput-object v12, v5, v11

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_35

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v9, 0x0

    invoke-virtual {v8, v9, v6, v9}, Lcom/google/android/gms/internal/zzcft;->zza(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lcom/google/android/gms/internal/zzcft;

    move-result-object v8

    :cond_35
    iget-object v6, v12, Lcom/google/android/gms/internal/zzcky;->name:Ljava/lang/String;

    iget-object v9, v12, Lcom/google/android/gms/internal/zzcky;->zzjin:Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-virtual {v8, v11, v12}, Lcom/google/android/gms/internal/zzcft;->zzbb(J)Lcom/google/android/gms/internal/zzcft;

    move-result-object v8

    goto :goto_1e

    :cond_36
    move-object v13, v2

    move-object/from16 v24, v3

    iget-wide v2, v8, Lcom/google/android/gms/internal/zzcft;->zziws:J

    move-object/from16 v25, v7

    iget-object v7, v12, Lcom/google/android/gms/internal/zzcky;->zzjin:Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    sub-long v26, v26, v2

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/32 v26, 0x5265c00

    cmp-long v7, v2, v26

    if-ltz v7, :cond_39

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawi()Lcom/google/android/gms/internal/zzckn;

    iget-object v2, v12, Lcom/google/android/gms/internal/zzcky;->zzjim:[Lcom/google/android/gms/internal/zzckz;

    const-wide/16 v26, 0x1

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v14, v3}, Lcom/google/android/gms/internal/zzckn;->zza([Lcom/google/android/gms/internal/zzckz;Ljava/lang/String;Ljava/lang/Object;)[Lcom/google/android/gms/internal/zzckz;

    move-result-object v2

    iput-object v2, v12, Lcom/google/android/gms/internal/zzcky;->zzjim:[Lcom/google/android/gms/internal/zzckz;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawi()Lcom/google/android/gms/internal/zzckn;

    iget-object v2, v12, Lcom/google/android/gms/internal/zzcky;->zzjim:[Lcom/google/android/gms/internal/zzckz;

    int-to-long v6, v1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v2, v15, v1}, Lcom/google/android/gms/internal/zzckn;->zza([Lcom/google/android/gms/internal/zzckz;Ljava/lang/String;Ljava/lang/Object;)[Lcom/google/android/gms/internal/zzckz;

    move-result-object v1

    iput-object v1, v12, Lcom/google/android/gms/internal/zzcky;->zzjim:[Lcom/google/android/gms/internal/zzckz;

    add-int/lit8 v1, v11, 0x1

    aput-object v12, v5, v11

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v3, 0x0

    invoke-virtual {v8, v3, v2, v6}, Lcom/google/android/gms/internal/zzcft;->zza(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lcom/google/android/gms/internal/zzcft;

    move-result-object v8

    :cond_37
    iget-object v2, v12, Lcom/google/android/gms/internal/zzcky;->name:Ljava/lang/String;

    iget-object v3, v12, Lcom/google/android/gms/internal/zzcky;->zzjin:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v8, v6, v7}, Lcom/google/android/gms/internal/zzcft;->zzbb(J)Lcom/google/android/gms/internal/zzcft;

    move-result-object v3

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v11, v1

    :cond_38
    const/4 v12, 0x0

    goto :goto_1f

    :cond_39
    const-wide/16 v26, 0x1

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_38

    iget-object v1, v12, Lcom/google/android/gms/internal/zzcky;->name:Ljava/lang/String;

    const/4 v12, 0x0

    invoke-virtual {v8, v6, v12, v12}, Lcom/google/android/gms/internal/zzcft;->zza(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lcom/google/android/gms/internal/zzcft;

    move-result-object v2

    invoke-interface {v4, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1f
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v1, p0

    move-object v2, v13

    move/from16 v9, v18

    move-object/from16 v8, v19

    move/from16 v6, v22

    move-object/from16 v3, v24

    move-object/from16 v7, v25

    goto/16 :goto_17

    :cond_3a
    move-object v13, v2

    move-object v1, v3

    move/from16 v22, v6

    const/4 v12, 0x0

    iget-object v2, v1, Lcom/google/android/gms/internal/zzclb;->zzjiu:[Lcom/google/android/gms/internal/zzcky;

    array-length v2, v2

    if-ge v11, v2, :cond_3b

    invoke-static {v5, v11}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/google/android/gms/internal/zzcky;

    iput-object v2, v1, Lcom/google/android/gms/internal/zzclb;->zzjiu:[Lcom/google/android/gms/internal/zzcky;

    :cond_3b
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_20
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawg()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/zzcft;

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/zzcfl;->zza(Lcom/google/android/gms/internal/zzcft;)V

    goto :goto_20

    :cond_3c
    move-object v13, v2

    move-object v1, v3

    move/from16 v22, v6

    const/4 v12, 0x0

    :cond_3d
    const-wide v2, 0x7fffffffffffffffL

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/gms/internal/zzclb;->zzjix:Ljava/lang/Long;

    const-wide/high16 v2, -0x8000000000000000L

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/gms/internal/zzclb;->zzjiy:Ljava/lang/Long;

    const/4 v2, 0x0

    :goto_21
    iget-object v3, v1, Lcom/google/android/gms/internal/zzclb;->zzjiu:[Lcom/google/android/gms/internal/zzcky;

    array-length v3, v3

    if-ge v2, v3, :cond_40

    iget-object v3, v1, Lcom/google/android/gms/internal/zzclb;->zzjiu:[Lcom/google/android/gms/internal/zzcky;

    aget-object v3, v3, v2

    iget-object v4, v3, Lcom/google/android/gms/internal/zzcky;->zzjin:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v6, v1, Lcom/google/android/gms/internal/zzclb;->zzjix:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-gez v8, :cond_3e

    iget-object v4, v3, Lcom/google/android/gms/internal/zzcky;->zzjin:Ljava/lang/Long;

    iput-object v4, v1, Lcom/google/android/gms/internal/zzclb;->zzjix:Ljava/lang/Long;

    :cond_3e
    iget-object v4, v3, Lcom/google/android/gms/internal/zzcky;->zzjin:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v6, v1, Lcom/google/android/gms/internal/zzclb;->zzjiy:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-lez v8, :cond_3f

    iget-object v3, v3, Lcom/google/android/gms/internal/zzcky;->zzjin:Ljava/lang/Long;

    iput-object v3, v1, Lcom/google/android/gms/internal/zzclb;->zzjiy:Ljava/lang/Long;

    :cond_3f
    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    :cond_40
    move-object v2, v13

    iget-object v3, v2, Lcom/google/android/gms/internal/zzchj$zza;->zzjdn:Lcom/google/android/gms/internal/zzclb;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzclb;->zzch:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawg()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/zzcfl;->zziv(Ljava/lang/String;)Lcom/google/android/gms/internal/zzcfe;

    move-result-object v4

    if-nez v4, :cond_41

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawm()Lcom/google/android/gms/internal/zzcgj;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzcgj;->zzayr()Lcom/google/android/gms/internal/zzcgl;

    move-result-object v4

    const-string v5, "Bundling raw events w/o app info. appId"

    iget-object v6, v2, Lcom/google/android/gms/internal/zzchj$zza;->zzjdn:Lcom/google/android/gms/internal/zzclb;

    iget-object v6, v6, Lcom/google/android/gms/internal/zzclb;->zzch:Ljava/lang/String;

    invoke-static {v6}, Lcom/google/android/gms/internal/zzcgj;->zzje(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/internal/zzcgl;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_24

    :cond_41
    iget-object v5, v1, Lcom/google/android/gms/internal/zzclb;->zzjiu:[Lcom/google/android/gms/internal/zzcky;

    array-length v5, v5

    if-lez v5, :cond_45

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzcfe;->zzawt()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-eqz v9, :cond_42

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    goto :goto_22

    :cond_42
    move-object v9, v12

    :goto_22
    iput-object v9, v1, Lcom/google/android/gms/internal/zzclb;->zzjja:Ljava/lang/Long;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzcfe;->zzaws()J

    move-result-wide v9

    cmp-long v11, v9, v7

    if-nez v11, :cond_43

    goto :goto_23

    :cond_43
    move-wide v5, v9

    :goto_23
    cmp-long v9, v5, v7

    if-eqz v9, :cond_44

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object v12, v5

    :cond_44
    iput-object v12, v1, Lcom/google/android/gms/internal/zzclb;->zzjiz:Ljava/lang/Long;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzcfe;->zzaxc()V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzcfe;->zzawz()J

    move-result-wide v5

    long-to-int v6, v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v1, Lcom/google/android/gms/internal/zzclb;->zzjjl:Ljava/lang/Integer;

    iget-object v5, v1, Lcom/google/android/gms/internal/zzclb;->zzjix:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/internal/zzcfe;->zzak(J)V

    iget-object v5, v1, Lcom/google/android/gms/internal/zzclb;->zzjiy:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/internal/zzcfe;->zzal(J)V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzcfe;->zzaxk()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/google/android/gms/internal/zzclb;->zzivb:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawg()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/zzcfl;->zza(Lcom/google/android/gms/internal/zzcfe;)V

    :cond_45
    :goto_24
    iget-object v4, v1, Lcom/google/android/gms/internal/zzclb;->zzjiu:[Lcom/google/android/gms/internal/zzcky;

    array-length v4, v4

    if-lez v4, :cond_49

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawj()Lcom/google/android/gms/internal/zzchd;

    move-result-object v4

    iget-object v5, v2, Lcom/google/android/gms/internal/zzchj$zza;->zzjdn:Lcom/google/android/gms/internal/zzclb;

    iget-object v5, v5, Lcom/google/android/gms/internal/zzclb;->zzch:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/zzchd;->zzjm(Ljava/lang/String;)Lcom/google/android/gms/internal/zzckv;

    move-result-object v4

    if-eqz v4, :cond_47

    iget-object v5, v4, Lcom/google/android/gms/internal/zzckv;->zzjib:Ljava/lang/Long;

    if-nez v5, :cond_46

    goto :goto_26

    :cond_46
    iget-object v4, v4, Lcom/google/android/gms/internal/zzckv;->zzjib:Ljava/lang/Long;

    :goto_25
    iput-object v4, v1, Lcom/google/android/gms/internal/zzclb;->zzjjs:Ljava/lang/Long;

    goto :goto_27

    :cond_47
    :goto_26
    iget-object v4, v2, Lcom/google/android/gms/internal/zzchj$zza;->zzjdn:Lcom/google/android/gms/internal/zzclb;

    iget-object v4, v4, Lcom/google/android/gms/internal/zzclb;->zziux:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_48

    const-wide/16 v4, -0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    goto :goto_25

    :cond_48
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawm()Lcom/google/android/gms/internal/zzcgj;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzcgj;->zzayt()Lcom/google/android/gms/internal/zzcgl;

    move-result-object v4

    const-string v5, "Did not find measurement config or missing version info. appId"

    iget-object v6, v2, Lcom/google/android/gms/internal/zzchj$zza;->zzjdn:Lcom/google/android/gms/internal/zzclb;

    iget-object v6, v6, Lcom/google/android/gms/internal/zzclb;->zzch:Ljava/lang/String;

    invoke-static {v6}, Lcom/google/android/gms/internal/zzcgj;->zzje(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/internal/zzcgl;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_27
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawg()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v4

    move/from16 v6, v22

    invoke-virtual {v4, v1, v6}, Lcom/google/android/gms/internal/zzcfl;->zza(Lcom/google/android/gms/internal/zzclb;Z)Z

    :cond_49
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawg()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v1

    iget-object v2, v2, Lcom/google/android/gms/internal/zzchj$zza;->zzjdo:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzcfl;->zzag(Ljava/util/List;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawg()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcfl;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_7

    :try_start_24
    const-string v4, "delete from raw_events_metadata where app_id=? and metadata_fingerprint not in (select distinct metadata_fingerprint from raw_events where app_id=?)"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const/4 v6, 0x1

    aput-object v3, v5, v6

    invoke-virtual {v2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_24
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_24 .. :try_end_24} :catch_b
    .catchall {:try_start_24 .. :try_end_24} :catchall_7

    goto :goto_28

    :catch_b
    move-exception v0

    move-object v2, v0

    :try_start_25
    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcih;->zzawm()Lcom/google/android/gms/internal/zzcgj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcgj;->zzayr()Lcom/google/android/gms/internal/zzcgl;

    move-result-object v1

    const-string v4, "Failed to remove unused event metadata. appId"

    invoke-static {v3}, Lcom/google/android/gms/internal/zzcgj;->zzje(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v4, v3, v2}, Lcom/google/android/gms/internal/zzcgl;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_28
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawg()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcfl;->setTransactionSuccessful()V
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_7

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawg()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcfl;->endTransaction()V

    const/4 v1, 0x1

    return v1

    :cond_4a
    :try_start_26
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawg()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcfl;->setTransactionSuccessful()V
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_7

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawg()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcfl;->endTransaction()V

    const/4 v1, 0x0

    return v1

    :catchall_6
    move-exception v0

    :goto_29
    move-object v1, v0

    move-object v3, v6

    :goto_2a
    if-eqz v3, :cond_4b

    :try_start_27
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_4b
    throw v1
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_7

    :catchall_7
    move-exception v0

    move-object v1, v0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawg()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcfl;->endTransaction()V

    goto :goto_2c

    :goto_2b
    throw v1

    :goto_2c
    goto :goto_2b
.end method

.method private final zzjq(Ljava/lang/String;)Lcom/google/android/gms/internal/zzcff;
    .locals 22

    move-object/from16 v2, p1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawg()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzcfl;->zziv(Ljava/lang/String;)Lcom/google/android/gms/internal/zzcfe;

    move-result-object v21

    const/4 v0, 0x0

    if-eqz v21, :cond_2

    invoke-virtual/range {v21 .. v21}, Lcom/google/android/gms/internal/zzcfe;->zzuy()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move-object/from16 v15, p0

    :try_start_0
    iget-object v1, v15, Lcom/google/android/gms/internal/zzchj;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzbgc;->zzcy(Landroid/content/Context;)Lcom/google/android/gms/internal/zzbgb;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/zzbgb;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual/range {v21 .. v21}, Lcom/google/android/gms/internal/zzcfe;->zzuy()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual/range {v21 .. v21}, Lcom/google/android/gms/internal/zzcfe;->zzuy()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawm()Lcom/google/android/gms/internal/zzcgj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcgj;->zzayt()Lcom/google/android/gms/internal/zzcgl;

    move-result-object v1

    const-string v3, "App version does not match; dropping. appId"

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/zzcgj;->zzje(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/google/android/gms/internal/zzcgl;->zzj(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/zzcff;

    move-object v1, v0

    invoke-virtual/range {v21 .. v21}, Lcom/google/android/gms/internal/zzcfe;->getGmpAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v21 .. v21}, Lcom/google/android/gms/internal/zzcfe;->zzuy()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v21 .. v21}, Lcom/google/android/gms/internal/zzcfe;->zzawu()J

    move-result-wide v5

    invoke-virtual/range {v21 .. v21}, Lcom/google/android/gms/internal/zzcfe;->zzawv()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v21 .. v21}, Lcom/google/android/gms/internal/zzcfe;->zzaww()J

    move-result-wide v8

    invoke-virtual/range {v21 .. v21}, Lcom/google/android/gms/internal/zzcfe;->zzawx()J

    move-result-wide v10

    const/4 v12, 0x0

    invoke-virtual/range {v21 .. v21}, Lcom/google/android/gms/internal/zzcfe;->zzawy()Z

    move-result v13

    const/4 v14, 0x0

    invoke-virtual/range {v21 .. v21}, Lcom/google/android/gms/internal/zzcfe;->zzawr()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v15, v16

    invoke-virtual/range {v21 .. v21}, Lcom/google/android/gms/internal/zzcfe;->zzaxl()J

    move-result-wide v16

    const-wide/16 v18, 0x0

    const/16 v20, 0x0

    invoke-virtual/range {v21 .. v21}, Lcom/google/android/gms/internal/zzcfe;->zzaxm()Z

    move-result v21

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v21}, Lcom/google/android/gms/internal/zzcff;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;ZZLjava/lang/String;JJIZ)V

    return-object v0

    :cond_2
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawm()Lcom/google/android/gms/internal/zzcgj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcgj;->zzayw()Lcom/google/android/gms/internal/zzcgl;

    move-result-object v1

    const-string v3, "No app data available; dropping"

    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/internal/zzcgl;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public final getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzchj;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public final isEnabled()Z
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawl()Lcom/google/android/gms/internal/zzche;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcih;->zzut()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzwu()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzchj;->zzjcb:Lcom/google/android/gms/internal/zzcfk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcfk;->zzaxo()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzchj;->zzjcb:Lcom/google/android/gms/internal/zzcfk;

    const-string v2, "firebase_analytics_collection_enabled"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzcfk;->zzis(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/android/gms/common/api/internal/zzcc;->zzaiw()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawn()Lcom/google/android/gms/internal/zzcgu;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcgu;->zzbm(Z)Z

    move-result v0

    return v0
.end method

.method protected final start()V
    .locals 6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawl()Lcom/google/android/gms/internal/zzche;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcih;->zzut()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawg()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcfl;->zzaxv()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawn()Lcom/google/android/gms/internal/zzcgu;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzcgu;->zzizw:Lcom/google/android/gms/internal/zzcgx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcgx;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawn()Lcom/google/android/gms/internal/zzcgu;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzcgu;->zzizw:Lcom/google/android/gms/internal/zzcgx;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzchj;->zzasd:Lcom/google/android/gms/common/util/zzd;

    invoke-interface {v1}, Lcom/google/android/gms/common/util/zzd;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/internal/zzcgx;->set(J)V

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawn()Lcom/google/android/gms/internal/zzcgu;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzcgu;->zzjab:Lcom/google/android/gms/internal/zzcgx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcgx;->get()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawm()Lcom/google/android/gms/internal/zzcgj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcgj;->zzayx()Lcom/google/android/gms/internal/zzcgl;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/gms/internal/zzchj;->zzjdl:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "Persisting first open"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/zzcgl;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawn()Lcom/google/android/gms/internal/zzcgu;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzcgu;->zzjab:Lcom/google/android/gms/internal/zzcgx;

    iget-wide v1, p0, Lcom/google/android/gms/internal/zzchj;->zzjdl:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzcgx;->set(J)V

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzazj()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawi()Lcom/google/android/gms/internal/zzckn;

    move-result-object v0

    const-string v1, "android.permission.INTERNET"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzckn;->zzdu(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawm()Lcom/google/android/gms/internal/zzcgj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcgj;->zzayr()Lcom/google/android/gms/internal/zzcgl;

    move-result-object v0

    const-string v1, "App is missing INTERNET permission"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcgl;->log(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawi()Lcom/google/android/gms/internal/zzckn;

    move-result-object v0

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzckn;->zzdu(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawm()Lcom/google/android/gms/internal/zzcgj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcgj;->zzayr()Lcom/google/android/gms/internal/zzcgl;

    move-result-object v0

    const-string v1, "App is missing ACCESS_NETWORK_STATE permission"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcgl;->log(Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzchj;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbgc;->zzcy(Landroid/content/Context;)Lcom/google/android/gms/internal/zzbgb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbgb;->zzami()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzchj;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcha;->zzbi(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawm()Lcom/google/android/gms/internal/zzcgj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcgj;->zzayr()Lcom/google/android/gms/internal/zzcgl;

    move-result-object v0

    const-string v1, "AppMeasurementReceiver not registered/enabled"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcgl;->log(Ljava/lang/String;)V

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzchj;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzcjx;->zzk(Landroid/content/Context;Z)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawm()Lcom/google/android/gms/internal/zzcgj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcgj;->zzayr()Lcom/google/android/gms/internal/zzcgl;

    move-result-object v0

    const-string v1, "AppMeasurementService not registered/enabled"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcgl;->log(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawm()Lcom/google/android/gms/internal/zzcgj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcgj;->zzayr()Lcom/google/android/gms/internal/zzcgl;

    move-result-object v0

    const-string v1, "Uploading is not possible. App measurement disabled"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcgl;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawb()Lcom/google/android/gms/internal/zzcge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcge;->getGmpAppId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawn()Lcom/google/android/gms/internal/zzcgu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcgu;->zzaza()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawn()Lcom/google/android/gms/internal/zzcgu;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawb()Lcom/google/android/gms/internal/zzcge;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcge;->getGmpAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcgu;->zzji(Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawb()Lcom/google/android/gms/internal/zzcge;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcge;->getGmpAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawm()Lcom/google/android/gms/internal/zzcgj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcgj;->zzayv()Lcom/google/android/gms/internal/zzcgl;

    move-result-object v0

    const-string v1, "Rechecking which service to use due to a GMP App Id change"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcgl;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawn()Lcom/google/android/gms/internal/zzcgu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcgu;->zzazd()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzchj;->zzjcp:Lcom/google/android/gms/internal/zzcjd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjd;->disconnect()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzchj;->zzjcp:Lcom/google/android/gms/internal/zzcjd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjd;->zzxr()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawn()Lcom/google/android/gms/internal/zzcgu;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawb()Lcom/google/android/gms/internal/zzcge;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcge;->getGmpAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcgu;->zzji(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawn()Lcom/google/android/gms/internal/zzcgu;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzcgu;->zzjab:Lcom/google/android/gms/internal/zzcgx;

    iget-wide v1, p0, Lcom/google/android/gms/internal/zzchj;->zzjdl:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzcgx;->set(J)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawn()Lcom/google/android/gms/internal/zzcgu;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzcgu;->zzjac:Lcom/google/android/gms/internal/zzcgz;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcgz;->zzjk(Ljava/lang/String;)V

    :cond_8
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawa()Lcom/google/android/gms/internal/zzcik;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawn()Lcom/google/android/gms/internal/zzcgu;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/zzcgu;->zzjac:Lcom/google/android/gms/internal/zzcgz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcgz;->zzazf()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcik;->zzjj(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawb()Lcom/google/android/gms/internal/zzcge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcge;->getGmpAppId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawa()Lcom/google/android/gms/internal/zzcik;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcih;->zzut()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcii;->zzwu()V

    iget-object v1, v0, Lcom/google/android/gms/internal/zzcik;->zzitk:Lcom/google/android/gms/internal/zzchj;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzchj;->zzazj()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcih;->zzawd()Lcom/google/android/gms/internal/zzcjd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcjd;->zzbaf()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcih;->zzawn()Lcom/google/android/gms/internal/zzcgu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcgu;->zzaze()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcih;->zzawc()Lcom/google/android/gms/internal/zzcfr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcii;->zzwu()V

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "_po"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "auto"

    const-string v3, "_ou"

    invoke-virtual {v0, v1, v3, v2}, Lcom/google/android/gms/internal/zzcik;->zzc(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawd()Lcom/google/android/gms/internal/zzcjd;

    move-result-object v0

    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcjd;->zza(Ljava/util/concurrent/atomic/AtomicReference;)V

    :cond_a
    :goto_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzchj;->zzazx()V

    return-void
.end method

.method protected final zza(ILjava/lang/Throwable;[B)V
    .locals 7

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawl()Lcom/google/android/gms/internal/zzche;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcih;->zzut()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzwu()V

    const/4 v0, 0x0

    if-nez p3, :cond_0

    :try_start_0
    new-array p3, v0, [B

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzchj;->zzjdc:Ljava/util/List;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/gms/internal/zzchj;->zzjdc:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v2, 0xc8

    const/4 v3, 0x1

    if-eq p1, v2, :cond_1

    const/16 v2, 0xcc

    if-ne p1, v2, :cond_5

    :cond_1
    if-nez p2, :cond_5

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawn()Lcom/google/android/gms/internal/zzcgu;

    move-result-object p2

    iget-object p2, p2, Lcom/google/android/gms/internal/zzcgu;->zzizw:Lcom/google/android/gms/internal/zzcgx;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzchj;->zzasd:Lcom/google/android/gms/common/util/zzd;

    invoke-interface {v2}, Lcom/google/android/gms/common/util/zzd;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {p2, v4, v5}, Lcom/google/android/gms/internal/zzcgx;->set(J)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawn()Lcom/google/android/gms/internal/zzcgu;

    move-result-object p2

    iget-object p2, p2, Lcom/google/android/gms/internal/zzcgu;->zzizx:Lcom/google/android/gms/internal/zzcgx;

    const-wide/16 v4, 0x0

    invoke-virtual {p2, v4, v5}, Lcom/google/android/gms/internal/zzcgx;->set(J)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzchj;->zzazx()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawm()Lcom/google/android/gms/internal/zzcgj;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzcgj;->zzayx()Lcom/google/android/gms/internal/zzcgl;

    move-result-object p2

    const-string v2, "Successful upload. Got network response. code, size"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    array-length p3, p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, v2, p1, p3}, Lcom/google/android/gms/internal/zzcgl;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawg()Lcom/google/android/gms/internal/zzcfl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcfl;->beginTransaction()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawg()Lcom/google/android/gms/internal/zzcfl;

    move-result-object p3

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p3}, Lcom/google/android/gms/internal/zzcih;->zzut()V

    invoke-virtual {p3}, Lcom/google/android/gms/internal/zzcii;->zzwu()V

    invoke-virtual {p3}, Lcom/google/android/gms/internal/zzcfl;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p2

    new-array v6, v3, [Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    const-string v1, "queue"

    const-string v2, "rowid=?"

    invoke-virtual {p2, v1, v2, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    if-ne p2, v3, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Landroid/database/sqlite/SQLiteException;

    const-string p2, "Deleted fewer rows from queue than expected"

    invoke-direct {p1, p2}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catch_0
    move-exception p1

    :try_start_4
    invoke-virtual {p3}, Lcom/google/android/gms/internal/zzcih;->zzawm()Lcom/google/android/gms/internal/zzcgj;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzcgj;->zzayr()Lcom/google/android/gms/internal/zzcgl;

    move-result-object p2

    const-string p3, "Failed to delete a bundle in a queue table"

    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/internal/zzcgl;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    throw p1

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawg()Lcom/google/android/gms/internal/zzcfl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcfl;->setTransactionSuccessful()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawg()Lcom/google/android/gms/internal/zzcfl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcfl;->endTransaction()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzazp()Lcom/google/android/gms/internal/zzcgn;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcgn;->zzzh()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzchj;->zzazw()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzazv()V

    goto :goto_1

    :cond_4
    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lcom/google/android/gms/internal/zzchj;->zzjdg:J

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzchj;->zzazx()V

    :goto_1
    iput-wide v4, p0, Lcom/google/android/gms/internal/zzchj;->zzjdh:J

    goto :goto_3

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawg()Lcom/google/android/gms/internal/zzcfl;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzcfl;->endTransaction()V

    throw p1
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catch_1
    move-exception p1

    :try_start_6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawm()Lcom/google/android/gms/internal/zzcgj;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzcgj;->zzayr()Lcom/google/android/gms/internal/zzcgl;

    move-result-object p2

    const-string p3, "Database error while trying to delete uploaded bundles"

    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/internal/zzcgl;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzchj;->zzasd:Lcom/google/android/gms/common/util/zzd;

    invoke-interface {p1}, Lcom/google/android/gms/common/util/zzd;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/internal/zzchj;->zzjdh:J

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawm()Lcom/google/android/gms/internal/zzcgj;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcgj;->zzayx()Lcom/google/android/gms/internal/zzcgl;

    move-result-object p1

    const-string p2, "Disable upload, time"

    iget-wide v1, p0, Lcom/google/android/gms/internal/zzchj;->zzjdh:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/zzcgl;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3

    :cond_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawm()Lcom/google/android/gms/internal/zzcgj;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/android/gms/internal/zzcgj;->zzayx()Lcom/google/android/gms/internal/zzcgl;

    move-result-object p3

    const-string v1, "Network upload failed. Will retry later. code, error"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p3, v1, v2, p2}, Lcom/google/android/gms/internal/zzcgl;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawn()Lcom/google/android/gms/internal/zzcgu;

    move-result-object p2

    iget-object p2, p2, Lcom/google/android/gms/internal/zzcgu;->zzizx:Lcom/google/android/gms/internal/zzcgx;

    iget-object p3, p0, Lcom/google/android/gms/internal/zzchj;->zzasd:Lcom/google/android/gms/common/util/zzd;

    invoke-interface {p3}, Lcom/google/android/gms/common/util/zzd;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Lcom/google/android/gms/internal/zzcgx;->set(J)V

    const/16 p2, 0x1f7

    if-eq p1, p2, :cond_7

    const/16 p2, 0x1ad

    if-ne p1, p2, :cond_6

    goto :goto_2

    :cond_6
    const/4 v3, 0x0

    :cond_7
    :goto_2
    if-eqz v3, :cond_8

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawn()Lcom/google/android/gms/internal/zzcgu;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/internal/zzcgu;->zzizy:Lcom/google/android/gms/internal/zzcgx;

    iget-object p2, p0, Lcom/google/android/gms/internal/zzchj;->zzasd:Lcom/google/android/gms/common/util/zzd;

    invoke-interface {p2}, Lcom/google/android/gms/common/util/zzd;->currentTimeMillis()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/zzcgx;->set(J)V

    :cond_8
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzchj;->zzazx()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :goto_3
    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzchj;->zzjdj:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzchj;->zzbab()V

    return-void

    :catchall_1
    move-exception p1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzchj;->zzjdj:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzchj;->zzbab()V

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method

.method public final zza(Lcom/google/android/gms/internal/zzcfx;Ljava/lang/String;)[B
    .locals 29

    move-object/from16 v11, p0

    move-object/from16 v0, p1

    move-object/from16 v10, p2

    const-string v1, "_iap"

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzwu()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawl()Lcom/google/android/gms/internal/zzche;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcih;->zzut()V

    invoke-static {}, Lcom/google/android/gms/internal/zzchj;->zzavw()V

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/common/internal/zzbq;->zzgh(Ljava/lang/String;)Ljava/lang/String;

    new-instance v8, Lcom/google/android/gms/internal/zzcla;

    invoke-direct {v8}, Lcom/google/android/gms/internal/zzcla;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawg()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcfl;->beginTransaction()V

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawg()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v2

    invoke-virtual {v2, v10}, Lcom/google/android/gms/internal/zzcfl;->zziv(Ljava/lang/String;)Lcom/google/android/gms/internal/zzcfe;

    move-result-object v9

    const/4 v6, 0x0

    if-nez v9, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawm()Lcom/google/android/gms/internal/zzcgj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcgj;->zzayw()Lcom/google/android/gms/internal/zzcgl;

    move-result-object v0

    const-string v1, "Log and bundle not available. package_name"

    invoke-virtual {v0, v1, v10}, Lcom/google/android/gms/internal/zzcgl;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    new-array v0, v6, [B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawg()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcfl;->endTransaction()V

    return-object v0

    :cond_0
    :try_start_1
    invoke-virtual {v9}, Lcom/google/android/gms/internal/zzcfe;->zzawy()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawm()Lcom/google/android/gms/internal/zzcgj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcgj;->zzayw()Lcom/google/android/gms/internal/zzcgl;

    move-result-object v0

    const-string v1, "Log and bundle disabled. package_name"

    invoke-virtual {v0, v1, v10}, Lcom/google/android/gms/internal/zzcgl;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v2, v0, Lcom/google/android/gms/internal/zzcfx;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "ecommerce_purchase"

    iget-object v3, v0, Lcom/google/android/gms/internal/zzcfx;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    invoke-direct {v11, v10, v0}, Lcom/google/android/gms/internal/zzchj;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzcfx;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawm()Lcom/google/android/gms/internal/zzcgj;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcgj;->zzayt()Lcom/google/android/gms/internal/zzcgl;

    move-result-object v2

    const-string v3, "Failed to handle purchase event at single event bundle creation. appId"

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/zzcgj;->zzje(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/zzcgl;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3
    new-instance v7, Lcom/google/android/gms/internal/zzclb;

    invoke-direct {v7}, Lcom/google/android/gms/internal/zzclb;-><init>()V

    const/4 v5, 0x1

    new-array v2, v5, [Lcom/google/android/gms/internal/zzclb;

    aput-object v7, v2, v6

    iput-object v2, v8, Lcom/google/android/gms/internal/zzcla;->zzjir:[Lcom/google/android/gms/internal/zzclb;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v7, Lcom/google/android/gms/internal/zzclb;->zzjit:Ljava/lang/Integer;

    const-string v2, "android"

    iput-object v2, v7, Lcom/google/android/gms/internal/zzclb;->zzjjb:Ljava/lang/String;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/zzcfe;->getAppId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v7, Lcom/google/android/gms/internal/zzclb;->zzch:Ljava/lang/String;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/zzcfe;->zzawv()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v7, Lcom/google/android/gms/internal/zzclb;->zziuy:Ljava/lang/String;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/zzcfe;->zzuy()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v7, Lcom/google/android/gms/internal/zzclb;->zzicq:Ljava/lang/String;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/zzcfe;->zzawu()J

    move-result-wide v2

    const-wide/32 v12, -0x80000000

    const/4 v4, 0x0

    cmp-long v14, v2, v12

    if-nez v14, :cond_4

    move-object v2, v4

    goto :goto_1

    :cond_4
    long-to-int v3, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_1
    iput-object v2, v7, Lcom/google/android/gms/internal/zzclb;->zzjjo:Ljava/lang/Integer;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/zzcfe;->zzaww()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v7, Lcom/google/android/gms/internal/zzclb;->zzjjf:Ljava/lang/Long;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/zzcfe;->getGmpAppId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v7, Lcom/google/android/gms/internal/zzclb;->zziux:Ljava/lang/String;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/zzcfe;->zzawx()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v7, Lcom/google/android/gms/internal/zzclb;->zzjjk:Ljava/lang/Long;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {}, Lcom/google/android/gms/internal/zzcfk;->zzaxs()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, v11, Lcom/google/android/gms/internal/zzchj;->zzjcb:Lcom/google/android/gms/internal/zzcfk;

    iget-object v3, v7, Lcom/google/android/gms/internal/zzclb;->zzch:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzcfk;->zzit(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawb()Lcom/google/android/gms/internal/zzcge;

    iput-object v4, v7, Lcom/google/android/gms/internal/zzclb;->zzjjt:Ljava/lang/String;

    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawn()Lcom/google/android/gms/internal/zzcgu;

    move-result-object v2

    invoke-virtual {v9}, Lcom/google/android/gms/internal/zzcfe;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzcgu;->zzjg(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v2

    invoke-virtual {v9}, Lcom/google/android/gms/internal/zzcfe;->zzaxm()Z

    move-result v3

    if-eqz v3, :cond_6

    if-eqz v2, :cond_6

    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iput-object v3, v7, Lcom/google/android/gms/internal/zzclb;->zzjjh:Ljava/lang/String;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    iput-object v2, v7, Lcom/google/android/gms/internal/zzclb;->zzjji:Ljava/lang/Boolean;

    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawc()Lcom/google/android/gms/internal/zzcfr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcii;->zzwu()V

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v2, v7, Lcom/google/android/gms/internal/zzclb;->zzjjc:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawc()Lcom/google/android/gms/internal/zzcfr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcii;->zzwu()V

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v2, v7, Lcom/google/android/gms/internal/zzclb;->zzcv:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawc()Lcom/google/android/gms/internal/zzcfr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcfr;->zzayi()J

    move-result-wide v2

    long-to-int v3, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v7, Lcom/google/android/gms/internal/zzclb;->zzjje:Ljava/lang/Integer;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawc()Lcom/google/android/gms/internal/zzcfr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcfr;->zzayj()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v7, Lcom/google/android/gms/internal/zzclb;->zzjjd:Ljava/lang/String;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/zzcfe;->getAppInstanceId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v7, Lcom/google/android/gms/internal/zzclb;->zzjjj:Ljava/lang/String;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/zzcfe;->zzawr()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v7, Lcom/google/android/gms/internal/zzclb;->zzivf:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawg()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v2

    invoke-virtual {v9}, Lcom/google/android/gms/internal/zzcfe;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzcfl;->zziu(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Lcom/google/android/gms/internal/zzcld;

    iput-object v3, v7, Lcom/google/android/gms/internal/zzclb;->zzjiv:[Lcom/google/android/gms/internal/zzcld;

    const/4 v3, 0x0

    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v12

    if-ge v3, v12, :cond_7

    new-instance v12, Lcom/google/android/gms/internal/zzcld;

    invoke-direct {v12}, Lcom/google/android/gms/internal/zzcld;-><init>()V

    iget-object v13, v7, Lcom/google/android/gms/internal/zzclb;->zzjiv:[Lcom/google/android/gms/internal/zzcld;

    aput-object v12, v13, v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/gms/internal/zzckm;

    iget-object v13, v13, Lcom/google/android/gms/internal/zzckm;->mName:Ljava/lang/String;

    iput-object v13, v12, Lcom/google/android/gms/internal/zzcld;->name:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/gms/internal/zzckm;

    iget-wide v13, v13, Lcom/google/android/gms/internal/zzckm;->zzjgr:J

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    iput-object v13, v12, Lcom/google/android/gms/internal/zzcld;->zzjjx:Ljava/lang/Long;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawi()Lcom/google/android/gms/internal/zzckn;

    move-result-object v13

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/android/gms/internal/zzckm;

    iget-object v14, v14, Lcom/google/android/gms/internal/zzckm;->mValue:Ljava/lang/Object;

    invoke-virtual {v13, v12, v14}, Lcom/google/android/gms/internal/zzckn;->zza(Lcom/google/android/gms/internal/zzcld;Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_7
    iget-object v2, v0, Lcom/google/android/gms/internal/zzcfx;->zziwy:Lcom/google/android/gms/internal/zzcfu;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcfu;->zzayl()Landroid/os/Bundle;

    move-result-object v3

    iget-object v2, v0, Lcom/google/android/gms/internal/zzcfx;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v2, "_r"

    const-wide/16 v12, 0x1

    if-eqz v1, :cond_8

    :try_start_2
    const-string v1, "_c"

    invoke-virtual {v3, v1, v12, v13}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawm()Lcom/google/android/gms/internal/zzcgj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcgj;->zzayw()Lcom/google/android/gms/internal/zzcgl;

    move-result-object v1

    const-string v14, "Marking in-app purchase as real-time"

    invoke-virtual {v1, v14}, Lcom/google/android/gms/internal/zzcgl;->log(Ljava/lang/String;)V

    invoke-virtual {v3, v2, v12, v13}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_8
    const-string v1, "_o"

    iget-object v14, v0, Lcom/google/android/gms/internal/zzcfx;->zzivk:Ljava/lang/String;

    invoke-virtual {v3, v1, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawi()Lcom/google/android/gms/internal/zzckn;

    move-result-object v1

    iget-object v14, v7, Lcom/google/android/gms/internal/zzclb;->zzch:Ljava/lang/String;

    invoke-virtual {v1, v14}, Lcom/google/android/gms/internal/zzckn;->zzkd(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawi()Lcom/google/android/gms/internal/zzckn;

    move-result-object v1

    const-string v14, "_dbg"

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v1, v3, v14, v15}, Lcom/google/android/gms/internal/zzckn;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawi()Lcom/google/android/gms/internal/zzckn;

    move-result-object v1

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v1, v3, v2, v12}, Lcom/google/android/gms/internal/zzckn;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawg()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/gms/internal/zzcfx;->name:Ljava/lang/String;

    invoke-virtual {v1, v10, v2}, Lcom/google/android/gms/internal/zzcfl;->zzae(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/zzcft;

    move-result-object v1

    const-wide/16 v26, 0x0

    if-nez v1, :cond_a

    new-instance v1, Lcom/google/android/gms/internal/zzcft;

    iget-object v14, v0, Lcom/google/android/gms/internal/zzcfx;->name:Ljava/lang/String;

    const-wide/16 v15, 0x1

    const-wide/16 v17, 0x0

    iget-wide v12, v0, Lcom/google/android/gms/internal/zzcfx;->zziwz:J

    const-wide/16 v21, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-wide/from16 v19, v12

    move-object v12, v1

    move-object/from16 v13, p2

    invoke-direct/range {v12 .. v25}, Lcom/google/android/gms/internal/zzcft;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawg()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/zzcfl;->zza(Lcom/google/android/gms/internal/zzcft;)V

    move-wide/from16 v12, v26

    goto :goto_3

    :cond_a
    iget-wide v12, v1, Lcom/google/android/gms/internal/zzcft;->zziwr:J

    iget-wide v14, v0, Lcom/google/android/gms/internal/zzcfx;->zziwz:J

    invoke-virtual {v1, v14, v15}, Lcom/google/android/gms/internal/zzcft;->zzba(J)Lcom/google/android/gms/internal/zzcft;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcft;->zzayk()Lcom/google/android/gms/internal/zzcft;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawg()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/zzcfl;->zza(Lcom/google/android/gms/internal/zzcft;)V

    :goto_3
    new-instance v14, Lcom/google/android/gms/internal/zzcfs;

    iget-object v15, v0, Lcom/google/android/gms/internal/zzcfx;->zzivk:Ljava/lang/String;

    iget-object v2, v0, Lcom/google/android/gms/internal/zzcfx;->name:Ljava/lang/String;

    iget-wide v0, v0, Lcom/google/android/gms/internal/zzcfx;->zziwz:J

    move-wide/from16 v16, v0

    move-object v1, v14

    move-object v0, v2

    move-object/from16 v2, p0

    move-object/from16 v18, v3

    move-object v3, v15

    move-object v15, v4

    move-object/from16 v4, p2

    const/4 v15, 0x1

    move-object v5, v0

    move-object/from16 v28, v7

    const/4 v0, 0x0

    move-wide/from16 v6, v16

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    move-wide v8, v12

    move-object/from16 v10, v18

    invoke-direct/range {v1 .. v10}, Lcom/google/android/gms/internal/zzcfs;-><init>(Lcom/google/android/gms/internal/zzchj;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLandroid/os/Bundle;)V

    new-instance v1, Lcom/google/android/gms/internal/zzcky;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzcky;-><init>()V

    new-array v2, v15, [Lcom/google/android/gms/internal/zzcky;

    aput-object v1, v2, v0

    move-object/from16 v3, v28

    iput-object v2, v3, Lcom/google/android/gms/internal/zzclb;->zzjiu:[Lcom/google/android/gms/internal/zzcky;

    iget-wide v4, v14, Lcom/google/android/gms/internal/zzcfs;->zzffr:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/gms/internal/zzcky;->zzjin:Ljava/lang/Long;

    iget-object v2, v14, Lcom/google/android/gms/internal/zzcfs;->mName:Ljava/lang/String;

    iput-object v2, v1, Lcom/google/android/gms/internal/zzcky;->name:Ljava/lang/String;

    iget-wide v4, v14, Lcom/google/android/gms/internal/zzcfs;->zziwn:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/gms/internal/zzcky;->zzjio:Ljava/lang/Long;

    iget-object v2, v14, Lcom/google/android/gms/internal/zzcfs;->zziwo:Lcom/google/android/gms/internal/zzcfu;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcfu;->size()I

    move-result v2

    new-array v2, v2, [Lcom/google/android/gms/internal/zzckz;

    iput-object v2, v1, Lcom/google/android/gms/internal/zzcky;->zzjim:[Lcom/google/android/gms/internal/zzckz;

    iget-object v2, v14, Lcom/google/android/gms/internal/zzcfs;->zziwo:Lcom/google/android/gms/internal/zzcfu;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcfu;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v6, 0x0

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    new-instance v5, Lcom/google/android/gms/internal/zzckz;

    invoke-direct {v5}, Lcom/google/android/gms/internal/zzckz;-><init>()V

    iget-object v7, v1, Lcom/google/android/gms/internal/zzcky;->zzjim:[Lcom/google/android/gms/internal/zzckz;

    add-int/lit8 v8, v6, 0x1

    aput-object v5, v7, v6

    iput-object v4, v5, Lcom/google/android/gms/internal/zzckz;->name:Ljava/lang/String;

    iget-object v6, v14, Lcom/google/android/gms/internal/zzcfs;->zziwo:Lcom/google/android/gms/internal/zzcfu;

    invoke-virtual {v6, v4}, Lcom/google/android/gms/internal/zzcfu;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawi()Lcom/google/android/gms/internal/zzckn;

    move-result-object v6

    invoke-virtual {v6, v5, v4}, Lcom/google/android/gms/internal/zzckn;->zza(Lcom/google/android/gms/internal/zzckz;Ljava/lang/Object;)V

    move v6, v8

    goto :goto_4

    :cond_b
    invoke-virtual/range {v17 .. v17}, Lcom/google/android/gms/internal/zzcfe;->getAppId()Ljava/lang/String;

    move-result-object v2

    iget-object v4, v3, Lcom/google/android/gms/internal/zzclb;->zzjiv:[Lcom/google/android/gms/internal/zzcld;

    iget-object v5, v3, Lcom/google/android/gms/internal/zzclb;->zzjiu:[Lcom/google/android/gms/internal/zzcky;

    invoke-direct {v11, v2, v4, v5}, Lcom/google/android/gms/internal/zzchj;->zza(Ljava/lang/String;[Lcom/google/android/gms/internal/zzcld;[Lcom/google/android/gms/internal/zzcky;)[Lcom/google/android/gms/internal/zzckx;

    move-result-object v2

    iput-object v2, v3, Lcom/google/android/gms/internal/zzclb;->zzjjn:[Lcom/google/android/gms/internal/zzckx;

    iget-object v2, v1, Lcom/google/android/gms/internal/zzcky;->zzjin:Ljava/lang/Long;

    iput-object v2, v3, Lcom/google/android/gms/internal/zzclb;->zzjix:Ljava/lang/Long;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzcky;->zzjin:Ljava/lang/Long;

    iput-object v1, v3, Lcom/google/android/gms/internal/zzclb;->zzjiy:Ljava/lang/Long;

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/gms/internal/zzcfe;->zzawt()J

    move-result-wide v1

    cmp-long v4, v1, v26

    if-eqz v4, :cond_c

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    goto :goto_5

    :cond_c
    const/4 v4, 0x0

    :goto_5
    iput-object v4, v3, Lcom/google/android/gms/internal/zzclb;->zzjja:Ljava/lang/Long;

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/gms/internal/zzcfe;->zzaws()J

    move-result-wide v4

    cmp-long v6, v4, v26

    if-nez v6, :cond_d

    goto :goto_6

    :cond_d
    move-wide v1, v4

    :goto_6
    cmp-long v4, v1, v26

    if-eqz v4, :cond_e

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    goto :goto_7

    :cond_e
    const/4 v4, 0x0

    :goto_7
    iput-object v4, v3, Lcom/google/android/gms/internal/zzclb;->zzjiz:Ljava/lang/Long;

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/gms/internal/zzcfe;->zzaxc()V

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/gms/internal/zzcfe;->zzawz()J

    move-result-wide v1

    long-to-int v2, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v3, Lcom/google/android/gms/internal/zzclb;->zzjjl:Ljava/lang/Integer;

    const-wide/16 v1, 0x2dc8

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v3, Lcom/google/android/gms/internal/zzclb;->zzjjg:Ljava/lang/Long;

    iget-object v1, v11, Lcom/google/android/gms/internal/zzchj;->zzasd:Lcom/google/android/gms/common/util/zzd;

    invoke-interface {v1}, Lcom/google/android/gms/common/util/zzd;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v3, Lcom/google/android/gms/internal/zzclb;->zzjiw:Ljava/lang/Long;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v1, v3, Lcom/google/android/gms/internal/zzclb;->zzjjm:Ljava/lang/Boolean;

    iget-object v1, v3, Lcom/google/android/gms/internal/zzclb;->zzjix:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    move-object/from16 v4, v17

    invoke-virtual {v4, v1, v2}, Lcom/google/android/gms/internal/zzcfe;->zzak(J)V

    iget-object v1, v3, Lcom/google/android/gms/internal/zzclb;->zzjiy:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v4, v1, v2}, Lcom/google/android/gms/internal/zzcfe;->zzal(J)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawg()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/zzcfl;->zza(Lcom/google/android/gms/internal/zzcfe;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawg()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcfl;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawg()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcfl;->endTransaction()V

    :try_start_3
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/zzfhk;->zzhl()I

    move-result v1

    new-array v2, v1, [B

    invoke-static {v2, v0, v1}, Lcom/google/android/gms/internal/zzfhc;->zzo([BII)Lcom/google/android/gms/internal/zzfhc;

    move-result-object v0

    move-object/from16 v1, v16

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzfhk;->zza(Lcom/google/android/gms/internal/zzfhc;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfhc;->zzcus()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawi()Lcom/google/android/gms/internal/zzckn;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzckn;->zzp([B)[B

    move-result-object v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawm()Lcom/google/android/gms/internal/zzcgj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcgj;->zzayr()Lcom/google/android/gms/internal/zzcgl;

    move-result-object v1

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/zzcgj;->zzje(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Data loss. Failed to bundle and serialize. appId"

    invoke-virtual {v1, v3, v2, v0}, Lcom/google/android/gms/internal/zzcgl;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v1, 0x0

    return-object v1

    :catchall_0
    move-exception v0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawg()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcfl;->endTransaction()V

    goto :goto_9

    :goto_8
    throw v0

    :goto_9
    goto :goto_8
.end method

.method public final zzavy()Lcom/google/android/gms/internal/zzcfa;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzchj;->zzjcw:Lcom/google/android/gms/internal/zzcfa;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzchj;->zza(Lcom/google/android/gms/internal/zzcih;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzchj;->zzjcw:Lcom/google/android/gms/internal/zzcfa;

    return-object v0
.end method

.method public final zzavz()Lcom/google/android/gms/internal/zzcfh;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzchj;->zzjcv:Lcom/google/android/gms/internal/zzcfh;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzchj;->zza(Lcom/google/android/gms/internal/zzcii;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzchj;->zzjcv:Lcom/google/android/gms/internal/zzcfh;

    return-object v0
.end method

.method public final zzawa()Lcom/google/android/gms/internal/zzcik;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzchj;->zzjcr:Lcom/google/android/gms/internal/zzcik;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzchj;->zza(Lcom/google/android/gms/internal/zzcii;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzchj;->zzjcr:Lcom/google/android/gms/internal/zzcik;

    return-object v0
.end method

.method public final zzawb()Lcom/google/android/gms/internal/zzcge;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzchj;->zzjcs:Lcom/google/android/gms/internal/zzcge;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzchj;->zza(Lcom/google/android/gms/internal/zzcii;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzchj;->zzjcs:Lcom/google/android/gms/internal/zzcge;

    return-object v0
.end method

.method public final zzawc()Lcom/google/android/gms/internal/zzcfr;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzchj;->zzjcq:Lcom/google/android/gms/internal/zzcfr;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzchj;->zza(Lcom/google/android/gms/internal/zzcii;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzchj;->zzjcq:Lcom/google/android/gms/internal/zzcfr;

    return-object v0
.end method

.method public final zzawd()Lcom/google/android/gms/internal/zzcjd;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzchj;->zzjcp:Lcom/google/android/gms/internal/zzcjd;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzchj;->zza(Lcom/google/android/gms/internal/zzcii;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzchj;->zzjcp:Lcom/google/android/gms/internal/zzcjd;

    return-object v0
.end method

.method public final zzawe()Lcom/google/android/gms/internal/zzciz;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzchj;->zzjco:Lcom/google/android/gms/internal/zzciz;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzchj;->zza(Lcom/google/android/gms/internal/zzcii;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzchj;->zzjco:Lcom/google/android/gms/internal/zzciz;

    return-object v0
.end method

.method public final zzawf()Lcom/google/android/gms/internal/zzcgf;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzchj;->zzjcm:Lcom/google/android/gms/internal/zzcgf;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzchj;->zza(Lcom/google/android/gms/internal/zzcii;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzchj;->zzjcm:Lcom/google/android/gms/internal/zzcgf;

    return-object v0
.end method

.method public final zzawg()Lcom/google/android/gms/internal/zzcfl;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzchj;->zzjcl:Lcom/google/android/gms/internal/zzcfl;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzchj;->zza(Lcom/google/android/gms/internal/zzcii;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzchj;->zzjcl:Lcom/google/android/gms/internal/zzcfl;

    return-object v0
.end method

.method public final zzawh()Lcom/google/android/gms/internal/zzcgh;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzchj;->zzjck:Lcom/google/android/gms/internal/zzcgh;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzchj;->zza(Lcom/google/android/gms/internal/zzcih;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzchj;->zzjck:Lcom/google/android/gms/internal/zzcgh;

    return-object v0
.end method

.method public final zzawi()Lcom/google/android/gms/internal/zzckn;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzchj;->zzjcj:Lcom/google/android/gms/internal/zzckn;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzchj;->zza(Lcom/google/android/gms/internal/zzcih;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzchj;->zzjcj:Lcom/google/android/gms/internal/zzckn;

    return-object v0
.end method

.method public final zzawj()Lcom/google/android/gms/internal/zzchd;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzchj;->zzjcg:Lcom/google/android/gms/internal/zzchd;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzchj;->zza(Lcom/google/android/gms/internal/zzcii;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzchj;->zzjcg:Lcom/google/android/gms/internal/zzchd;

    return-object v0
.end method

.method public final zzawk()Lcom/google/android/gms/internal/zzckc;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzchj;->zzjcf:Lcom/google/android/gms/internal/zzckc;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzchj;->zza(Lcom/google/android/gms/internal/zzcii;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzchj;->zzjcf:Lcom/google/android/gms/internal/zzckc;

    return-object v0
.end method

.method public final zzawl()Lcom/google/android/gms/internal/zzche;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzchj;->zzjce:Lcom/google/android/gms/internal/zzche;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzchj;->zza(Lcom/google/android/gms/internal/zzcii;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzchj;->zzjce:Lcom/google/android/gms/internal/zzche;

    return-object v0
.end method

.method public final zzawm()Lcom/google/android/gms/internal/zzcgj;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzchj;->zzjcd:Lcom/google/android/gms/internal/zzcgj;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzchj;->zza(Lcom/google/android/gms/internal/zzcii;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzchj;->zzjcd:Lcom/google/android/gms/internal/zzcgj;

    return-object v0
.end method

.method public final zzawn()Lcom/google/android/gms/internal/zzcgu;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzchj;->zzjcc:Lcom/google/android/gms/internal/zzcgu;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzchj;->zza(Lcom/google/android/gms/internal/zzcih;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzchj;->zzjcc:Lcom/google/android/gms/internal/zzcgu;

    return-object v0
.end method

.method public final zzawo()Lcom/google/android/gms/internal/zzcfk;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzchj;->zzjcb:Lcom/google/android/gms/internal/zzcfk;

    return-object v0
.end method

.method protected final zzazj()Z
    .locals 6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzwu()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawl()Lcom/google/android/gms/internal/zzche;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcih;->zzut()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzchj;->zzjcy:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-wide v1, p0, Lcom/google/android/gms/internal/zzchj;->zzjcz:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzchj;->zzasd:Lcom/google/android/gms/common/util/zzd;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zzd;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzchj;->zzjcz:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    cmp-long v4, v0, v2

    if-lez v4, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzchj;->zzasd:Lcom/google/android/gms/common/util/zzd;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zzd;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzchj;->zzjcz:J

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawi()Lcom/google/android/gms/internal/zzckn;

    move-result-object v0

    const-string v1, "android.permission.INTERNET"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzckn;->zzdu(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawi()Lcom/google/android/gms/internal/zzckn;

    move-result-object v0

    const-string v2, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzckn;->zzdu(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzchj;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbgc;->zzcy(Landroid/content/Context;)Lcom/google/android/gms/internal/zzbgb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbgb;->zzami()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzchj;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcha;->zzbi(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzchj;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzcjx;->zzk(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzchj;->zzjcy:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawi()Lcom/google/android/gms/internal/zzckn;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawb()Lcom/google/android/gms/internal/zzcge;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcge;->getGmpAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzckn;->zzka(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzchj;->zzjcy:Ljava/lang/Boolean;

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzchj;->zzjcy:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final zzazl()Lcom/google/android/gms/internal/zzcgj;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzchj;->zzjcd:Lcom/google/android/gms/internal/zzcgj;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcii;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzchj;->zzjcd:Lcom/google/android/gms/internal/zzcgj;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method final zzazm()Lcom/google/android/gms/internal/zzche;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzchj;->zzjce:Lcom/google/android/gms/internal/zzche;

    return-object v0
.end method

.method public final zzazn()Lcom/google/android/gms/measurement/AppMeasurement;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzchj;->zzjch:Lcom/google/android/gms/measurement/AppMeasurement;

    return-object v0
.end method

.method public final zzazo()Lcom/google/firebase/analytics/FirebaseAnalytics;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzchj;->zzjci:Lcom/google/firebase/analytics/FirebaseAnalytics;

    return-object v0
.end method

.method public final zzazp()Lcom/google/android/gms/internal/zzcgn;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzchj;->zzjcn:Lcom/google/android/gms/internal/zzcgn;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzchj;->zza(Lcom/google/android/gms/internal/zzcii;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzchj;->zzjcn:Lcom/google/android/gms/internal/zzcgn;

    return-object v0
.end method

.method final zzazt()J
    .locals 6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawn()Lcom/google/android/gms/internal/zzcgu;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzcgu;->zzjab:Lcom/google/android/gms/internal/zzcgx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcgx;->get()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzchj;->zzjdl:J

    return-wide v0

    :cond_0
    iget-wide v1, p0, Lcom/google/android/gms/internal/zzchj;->zzjdl:J

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzazv()V
    .locals 17

    move-object/from16 v1, p0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawl()Lcom/google/android/gms/internal/zzche;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcih;->zzut()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzwu()V

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/google/android/gms/internal/zzchj;->zzjdk:Z

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawd()Lcom/google/android/gms/internal/zzcjd;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzcjd;->zzbag()Ljava/lang/Boolean;

    move-result-object v3

    if-nez v3, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawm()Lcom/google/android/gms/internal/zzcgj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcgj;->zzayt()Lcom/google/android/gms/internal/zzcgl;

    move-result-object v0

    const-string v3, "Upload data called on the client side before use of service was decided"

    :goto_0
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/zzcgl;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_1
    iput-boolean v2, v1, Lcom/google/android/gms/internal/zzchj;->zzjdk:Z

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzbab()V

    return-void

    :cond_1
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawm()Lcom/google/android/gms/internal/zzcgj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcgj;->zzayr()Lcom/google/android/gms/internal/zzcgl;

    move-result-object v0

    const-string v3, "Upload called in the client side when service should be used"

    goto :goto_0

    :cond_2
    iget-wide v3, v1, Lcom/google/android/gms/internal/zzchj;->zzjdh:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-lez v7, :cond_3

    :goto_2
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzazx()V

    goto :goto_1

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawl()Lcom/google/android/gms/internal/zzche;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzcih;->zzut()V

    iget-object v3, v1, Lcom/google/android/gms/internal/zzchj;->zzjdc:Ljava/util/List;

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    goto :goto_3

    :cond_4
    const/4 v3, 0x0

    :goto_3
    if-eqz v3, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawm()Lcom/google/android/gms/internal/zzcgj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcgj;->zzayx()Lcom/google/android/gms/internal/zzcgl;

    move-result-object v0

    const-string v3, "Uploading requested multiple times"

    goto :goto_0

    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzazp()Lcom/google/android/gms/internal/zzcgn;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzcgn;->zzzh()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawm()Lcom/google/android/gms/internal/zzcgj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcgj;->zzayx()Lcom/google/android/gms/internal/zzcgl;

    move-result-object v0

    const-string v3, "Network not connected, ignoring upload request"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/zzcgl;->log(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    iget-object v3, v1, Lcom/google/android/gms/internal/zzchj;->zzasd:Lcom/google/android/gms/common/util/zzd;

    invoke-interface {v3}, Lcom/google/android/gms/common/util/zzd;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {}, Lcom/google/android/gms/internal/zzcfk;->zzaxq()J

    move-result-wide v7

    sub-long v7, v3, v7

    const/4 v9, 0x0

    invoke-direct {v1, v9, v7, v8}, Lcom/google/android/gms/internal/zzchj;->zzh(Ljava/lang/String;J)Z

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawn()Lcom/google/android/gms/internal/zzcgu;

    move-result-object v7

    iget-object v7, v7, Lcom/google/android/gms/internal/zzcgu;->zzizw:Lcom/google/android/gms/internal/zzcgx;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/zzcgx;->get()J

    move-result-wide v7

    cmp-long v10, v7, v5

    if-eqz v10, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawm()Lcom/google/android/gms/internal/zzcgj;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzcgj;->zzayw()Lcom/google/android/gms/internal/zzcgl;

    move-result-object v5

    const-string v6, "Uploading events. Elapsed time since last upload attempt (ms)"

    sub-long v7, v3, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(J)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/internal/zzcgl;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawg()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzcfl;->zzaxt()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    const-wide/16 v7, -0x1

    if-nez v6, :cond_14

    iget-wide v10, v1, Lcom/google/android/gms/internal/zzchj;->zzjdg:J

    cmp-long v6, v10, v7

    if-nez v6, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawg()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/internal/zzcfl;->zzaya()J

    move-result-wide v6

    iput-wide v6, v1, Lcom/google/android/gms/internal/zzchj;->zzjdg:J

    :cond_8
    iget-object v6, v1, Lcom/google/android/gms/internal/zzchj;->zzjcb:Lcom/google/android/gms/internal/zzcfk;

    sget-object v7, Lcom/google/android/gms/internal/zzcfz;->zzixo:Lcom/google/android/gms/internal/zzcga;

    invoke-virtual {v6, v5, v7}, Lcom/google/android/gms/internal/zzcfk;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzcga;)I

    move-result v6

    iget-object v7, v1, Lcom/google/android/gms/internal/zzchj;->zzjcb:Lcom/google/android/gms/internal/zzcfk;

    sget-object v8, Lcom/google/android/gms/internal/zzcfz;->zzixp:Lcom/google/android/gms/internal/zzcga;

    invoke-virtual {v7, v5, v8}, Lcom/google/android/gms/internal/zzcfk;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzcga;)I

    move-result v7

    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawg()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v8

    invoke-virtual {v8, v5, v6, v7}, Lcom/google/android/gms/internal/zzcfl;->zzl(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_9
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/Pair;

    iget-object v8, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Lcom/google/android/gms/internal/zzclb;

    iget-object v10, v8, Lcom/google/android/gms/internal/zzclb;->zzjjh:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_9

    iget-object v7, v8, Lcom/google/android/gms/internal/zzclb;->zzjjh:Ljava/lang/String;

    goto :goto_4

    :cond_a
    move-object v7, v9

    :goto_4
    if-eqz v7, :cond_c

    const/4 v8, 0x0

    :goto_5
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    if-ge v8, v10, :cond_c

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/Pair;

    iget-object v10, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Lcom/google/android/gms/internal/zzclb;

    iget-object v11, v10, Lcom/google/android/gms/internal/zzclb;->zzjjh:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_b

    iget-object v10, v10, Lcom/google/android/gms/internal/zzclb;->zzjjh:Ljava/lang/String;

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_b

    invoke-interface {v6, v2, v8}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v6

    goto :goto_6

    :cond_b
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_c
    :goto_6
    new-instance v7, Lcom/google/android/gms/internal/zzcla;

    invoke-direct {v7}, Lcom/google/android/gms/internal/zzcla;-><init>()V

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    new-array v8, v8, [Lcom/google/android/gms/internal/zzclb;

    iput-object v8, v7, Lcom/google/android/gms/internal/zzcla;->zzjir:[Lcom/google/android/gms/internal/zzclb;

    new-instance v8, Ljava/util/ArrayList;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    invoke-direct {v8, v10}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {}, Lcom/google/android/gms/internal/zzcfk;->zzaxs()Z

    move-result v10

    if-eqz v10, :cond_d

    iget-object v10, v1, Lcom/google/android/gms/internal/zzchj;->zzjcb:Lcom/google/android/gms/internal/zzcfk;

    invoke-virtual {v10, v5}, Lcom/google/android/gms/internal/zzcfk;->zzit(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_d

    const/4 v10, 0x1

    goto :goto_7

    :cond_d
    const/4 v10, 0x0

    :goto_7
    const/4 v11, 0x0

    :goto_8
    iget-object v12, v7, Lcom/google/android/gms/internal/zzcla;->zzjir:[Lcom/google/android/gms/internal/zzclb;

    array-length v12, v12

    if-ge v11, v12, :cond_f

    iget-object v12, v7, Lcom/google/android/gms/internal/zzcla;->zzjir:[Lcom/google/android/gms/internal/zzclb;

    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/util/Pair;

    iget-object v13, v13, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v13, Lcom/google/android/gms/internal/zzclb;

    aput-object v13, v12, v11

    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/Pair;

    iget-object v12, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Long;

    invoke-interface {v8, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v12, v7, Lcom/google/android/gms/internal/zzcla;->zzjir:[Lcom/google/android/gms/internal/zzclb;

    aget-object v12, v12, v11

    const-wide/16 v13, 0x2dc8

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    iput-object v13, v12, Lcom/google/android/gms/internal/zzclb;->zzjjg:Ljava/lang/Long;

    iget-object v12, v7, Lcom/google/android/gms/internal/zzcla;->zzjir:[Lcom/google/android/gms/internal/zzclb;

    aget-object v12, v12, v11

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    iput-object v13, v12, Lcom/google/android/gms/internal/zzclb;->zzjiw:Ljava/lang/Long;

    iget-object v12, v7, Lcom/google/android/gms/internal/zzcla;->zzjir:[Lcom/google/android/gms/internal/zzclb;

    aget-object v12, v12, v11

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    iput-object v13, v12, Lcom/google/android/gms/internal/zzclb;->zzjjm:Ljava/lang/Boolean;

    if-nez v10, :cond_e

    iget-object v12, v7, Lcom/google/android/gms/internal/zzcla;->zzjir:[Lcom/google/android/gms/internal/zzclb;

    aget-object v12, v12, v11

    iput-object v9, v12, Lcom/google/android/gms/internal/zzclb;->zzjjt:Ljava/lang/String;

    :cond_e
    add-int/lit8 v11, v11, 0x1

    goto :goto_8

    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawm()Lcom/google/android/gms/internal/zzcgj;

    move-result-object v6

    const/4 v10, 0x2

    invoke-virtual {v6, v10}, Lcom/google/android/gms/internal/zzcgj;->zzae(I)Z

    move-result v6

    if-eqz v6, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawh()Lcom/google/android/gms/internal/zzcgh;

    move-result-object v6

    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/zzcgh;->zza(Lcom/google/android/gms/internal/zzcla;)Ljava/lang/String;

    move-result-object v9

    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawi()Lcom/google/android/gms/internal/zzckn;

    move-result-object v6

    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/zzckn;->zzb(Lcom/google/android/gms/internal/zzcla;)[B

    move-result-object v14

    sget-object v6, Lcom/google/android/gms/internal/zzcfz;->zzixy:Lcom/google/android/gms/internal/zzcga;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/zzcga;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance v13, Ljava/net/URL;

    invoke-direct {v13, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_11

    const/4 v10, 0x1

    goto :goto_9

    :cond_11
    const/4 v10, 0x0

    :goto_9
    invoke-static {v10}, Lcom/google/android/gms/common/internal/zzbq;->checkArgument(Z)V

    iget-object v10, v1, Lcom/google/android/gms/internal/zzchj;->zzjdc:Ljava/util/List;

    if-eqz v10, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawm()Lcom/google/android/gms/internal/zzcgj;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/internal/zzcgj;->zzayr()Lcom/google/android/gms/internal/zzcgl;

    move-result-object v8

    const-string v10, "Set uploading progress before finishing the previous upload"

    invoke-virtual {v8, v10}, Lcom/google/android/gms/internal/zzcgl;->log(Ljava/lang/String;)V

    goto :goto_a

    :cond_12
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v10, v1, Lcom/google/android/gms/internal/zzchj;->zzjdc:Ljava/util/List;

    :goto_a
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawn()Lcom/google/android/gms/internal/zzcgu;

    move-result-object v8

    iget-object v8, v8, Lcom/google/android/gms/internal/zzcgu;->zzizx:Lcom/google/android/gms/internal/zzcgx;

    invoke-virtual {v8, v3, v4}, Lcom/google/android/gms/internal/zzcgx;->set(J)V

    const-string v3, "?"

    iget-object v4, v7, Lcom/google/android/gms/internal/zzcla;->zzjir:[Lcom/google/android/gms/internal/zzclb;

    array-length v4, v4

    if-lez v4, :cond_13

    iget-object v3, v7, Lcom/google/android/gms/internal/zzcla;->zzjir:[Lcom/google/android/gms/internal/zzclb;

    aget-object v3, v3, v2

    iget-object v3, v3, Lcom/google/android/gms/internal/zzclb;->zzch:Ljava/lang/String;

    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawm()Lcom/google/android/gms/internal/zzcgj;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzcgj;->zzayx()Lcom/google/android/gms/internal/zzcgl;

    move-result-object v4

    const-string v7, "Uploading data. app, uncompressed size, data"

    array-length v8, v14

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v7, v3, v8, v9}, Lcom/google/android/gms/internal/zzcgl;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-boolean v0, v1, Lcom/google/android/gms/internal/zzchj;->zzjdj:Z

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzazp()Lcom/google/android/gms/internal/zzcgn;

    move-result-object v11

    new-instance v0, Lcom/google/android/gms/internal/zzchm;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzchm;-><init>(Lcom/google/android/gms/internal/zzchj;)V

    invoke-virtual {v11}, Lcom/google/android/gms/internal/zzcih;->zzut()V

    invoke-virtual {v11}, Lcom/google/android/gms/internal/zzcii;->zzwu()V

    invoke-static {v13}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v14}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v11}, Lcom/google/android/gms/internal/zzcih;->zzawl()Lcom/google/android/gms/internal/zzche;

    move-result-object v3

    new-instance v4, Lcom/google/android/gms/internal/zzcgr;

    const/4 v15, 0x0

    move-object v10, v4

    move-object v12, v5

    move-object/from16 v16, v0

    invoke-direct/range {v10 .. v16}, Lcom/google/android/gms/internal/zzcgr;-><init>(Lcom/google/android/gms/internal/zzcgn;Ljava/lang/String;Ljava/net/URL;[BLjava/util/Map;Lcom/google/android/gms/internal/zzcgp;)V

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/zzche;->zzh(Ljava/lang/Runnable;)V
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawm()Lcom/google/android/gms/internal/zzcgj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcgj;->zzayr()Lcom/google/android/gms/internal/zzcgl;

    move-result-object v0

    const-string v3, "Failed to parse upload URL. Not uploading. appId"

    invoke-static {v5}, Lcom/google/android/gms/internal/zzcgj;->zzje(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v3, v4, v6}, Lcom/google/android/gms/internal/zzcgl;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_14
    iput-wide v7, v1, Lcom/google/android/gms/internal/zzchj;->zzjdg:J

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawg()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/zzcfk;->zzaxq()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/internal/zzcfl;->zzaz(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawg()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/zzcfl;->zziv(Ljava/lang/String;)Lcom/google/android/gms/internal/zzcfe;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzchj;->zzb(Lcom/google/android/gms/internal/zzcfe;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    iput-boolean v2, v1, Lcom/google/android/gms/internal/zzchj;->zzjdk:Z

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzbab()V

    goto :goto_c

    :goto_b
    throw v0

    :goto_c
    goto :goto_b
.end method

.method final zzazy()V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzchj;->zzjdf:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzchj;->zzjdf:I

    return-void
.end method

.method final zzazz()V
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawl()Lcom/google/android/gms/internal/zzche;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcih;->zzut()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzwu()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzchj;->zzjcx:Z

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawm()Lcom/google/android/gms/internal/zzcgj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcgj;->zzayv()Lcom/google/android/gms/internal/zzcgl;

    move-result-object v0

    const-string v1, "This instance being marked as an uploader"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcgl;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawl()Lcom/google/android/gms/internal/zzche;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcih;->zzut()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzwu()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzchj;->zzbaa()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzchj;->zzazs()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzchj;->zzjdb:Ljava/nio/channels/FileChannel;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzchj;->zza(Ljava/nio/channels/FileChannel;)I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawb()Lcom/google/android/gms/internal/zzcge;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcge;->zzayo()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawl()Lcom/google/android/gms/internal/zzche;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcih;->zzut()V

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawm()Lcom/google/android/gms/internal/zzcgj;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcgj;->zzayr()Lcom/google/android/gms/internal/zzcgl;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "Panic: can\'t downgrade version. Previous, current version"

    :goto_0
    invoke-virtual {v2, v3, v0, v1}, Lcom/google/android/gms/internal/zzcgl;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    if-ge v0, v1, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzchj;->zzjdb:Ljava/nio/channels/FileChannel;

    invoke-direct {p0, v1, v2}, Lcom/google/android/gms/internal/zzchj;->zza(ILjava/nio/channels/FileChannel;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawm()Lcom/google/android/gms/internal/zzcgj;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcgj;->zzayx()Lcom/google/android/gms/internal/zzcgl;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "Storage version upgraded. Previous, current version"

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawm()Lcom/google/android/gms/internal/zzcgj;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcgj;->zzayr()Lcom/google/android/gms/internal/zzcgl;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "Storage version upgrade failed. Previous, current version"

    goto :goto_0

    :cond_2
    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzchj;->zzjcx:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzchj;->zzazx()V

    :cond_3
    return-void
.end method

.method final zzb(Lcom/google/android/gms/internal/zzcfi;Lcom/google/android/gms/internal/zzcff;)V
    .locals 10

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzcfi;->packageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbq;->zzgh(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzcfi;->zzivk:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzcfi;->zzivl:Lcom/google/android/gms/internal/zzckk;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzcfi;->zzivl:Lcom/google/android/gms/internal/zzckk;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzckk;->name:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbq;->zzgh(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawl()Lcom/google/android/gms/internal/zzche;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcih;->zzut()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzwu()V

    iget-object v0, p2, Lcom/google/android/gms/internal/zzcff;->zziux:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p2, Lcom/google/android/gms/internal/zzcff;->zzivc:Z

    if-nez v0, :cond_1

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzchj;->zzg(Lcom/google/android/gms/internal/zzcff;)V

    return-void

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/zzcfi;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzcfi;-><init>(Lcom/google/android/gms/internal/zzcfi;)V

    const/4 p1, 0x0

    iput-boolean p1, v0, Lcom/google/android/gms/internal/zzcfi;->zzivn:Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawg()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcfl;->beginTransaction()V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawg()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/gms/internal/zzcfi;->packageName:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/gms/internal/zzcfi;->zzivl:Lcom/google/android/gms/internal/zzckk;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzckk;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/zzcfl;->zzah(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/zzcfi;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v2, v1, Lcom/google/android/gms/internal/zzcfi;->zzivk:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/gms/internal/zzcfi;->zzivk:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawm()Lcom/google/android/gms/internal/zzcgj;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcgj;->zzayt()Lcom/google/android/gms/internal/zzcgl;

    move-result-object v2

    const-string v3, "Updating a conditional user property with different origin. name, origin, origin (from DB)"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawh()Lcom/google/android/gms/internal/zzcgh;

    move-result-object v4

    iget-object v5, v0, Lcom/google/android/gms/internal/zzcfi;->zzivl:Lcom/google/android/gms/internal/zzckk;

    iget-object v5, v5, Lcom/google/android/gms/internal/zzckk;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/zzcgh;->zzjd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lcom/google/android/gms/internal/zzcfi;->zzivk:Ljava/lang/String;

    iget-object v6, v1, Lcom/google/android/gms/internal/zzcfi;->zzivk:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/google/android/gms/internal/zzcgl;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    const/4 v2, 0x1

    if-eqz v1, :cond_3

    iget-boolean v3, v1, Lcom/google/android/gms/internal/zzcfi;->zzivn:Z

    if-eqz v3, :cond_3

    iget-object v2, v1, Lcom/google/android/gms/internal/zzcfi;->zzivk:Ljava/lang/String;

    iput-object v2, v0, Lcom/google/android/gms/internal/zzcfi;->zzivk:Ljava/lang/String;

    iget-wide v2, v1, Lcom/google/android/gms/internal/zzcfi;->zzivm:J

    iput-wide v2, v0, Lcom/google/android/gms/internal/zzcfi;->zzivm:J

    iget-wide v2, v1, Lcom/google/android/gms/internal/zzcfi;->zzivq:J

    iput-wide v2, v0, Lcom/google/android/gms/internal/zzcfi;->zzivq:J

    iget-object v2, v1, Lcom/google/android/gms/internal/zzcfi;->zzivo:Ljava/lang/String;

    iput-object v2, v0, Lcom/google/android/gms/internal/zzcfi;->zzivo:Ljava/lang/String;

    iget-object v2, v1, Lcom/google/android/gms/internal/zzcfi;->zzivr:Lcom/google/android/gms/internal/zzcfx;

    iput-object v2, v0, Lcom/google/android/gms/internal/zzcfi;->zzivr:Lcom/google/android/gms/internal/zzcfx;

    iget-boolean v2, v1, Lcom/google/android/gms/internal/zzcfi;->zzivn:Z

    iput-boolean v2, v0, Lcom/google/android/gms/internal/zzcfi;->zzivn:Z

    new-instance v2, Lcom/google/android/gms/internal/zzckk;

    iget-object v3, v0, Lcom/google/android/gms/internal/zzcfi;->zzivl:Lcom/google/android/gms/internal/zzckk;

    iget-object v4, v3, Lcom/google/android/gms/internal/zzckk;->name:Ljava/lang/String;

    iget-object v3, v1, Lcom/google/android/gms/internal/zzcfi;->zzivl:Lcom/google/android/gms/internal/zzckk;

    iget-wide v5, v3, Lcom/google/android/gms/internal/zzckk;->zzjgn:J

    iget-object v3, v0, Lcom/google/android/gms/internal/zzcfi;->zzivl:Lcom/google/android/gms/internal/zzckk;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzckk;->getValue()Ljava/lang/Object;

    move-result-object v7

    iget-object v1, v1, Lcom/google/android/gms/internal/zzcfi;->zzivl:Lcom/google/android/gms/internal/zzckk;

    iget-object v8, v1, Lcom/google/android/gms/internal/zzckk;->zzivk:Ljava/lang/String;

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/internal/zzckk;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/google/android/gms/internal/zzcfi;->zzivl:Lcom/google/android/gms/internal/zzckk;

    goto :goto_0

    :cond_3
    iget-object v1, v0, Lcom/google/android/gms/internal/zzcfi;->zzivo:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance p1, Lcom/google/android/gms/internal/zzckk;

    iget-object v1, v0, Lcom/google/android/gms/internal/zzcfi;->zzivl:Lcom/google/android/gms/internal/zzckk;

    iget-object v4, v1, Lcom/google/android/gms/internal/zzckk;->name:Ljava/lang/String;

    iget-wide v5, v0, Lcom/google/android/gms/internal/zzcfi;->zzivm:J

    iget-object v1, v0, Lcom/google/android/gms/internal/zzcfi;->zzivl:Lcom/google/android/gms/internal/zzckk;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzckk;->getValue()Ljava/lang/Object;

    move-result-object v7

    iget-object v1, v0, Lcom/google/android/gms/internal/zzcfi;->zzivl:Lcom/google/android/gms/internal/zzckk;

    iget-object v8, v1, Lcom/google/android/gms/internal/zzckk;->zzivk:Ljava/lang/String;

    move-object v3, p1

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/internal/zzckk;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    iput-object p1, v0, Lcom/google/android/gms/internal/zzcfi;->zzivl:Lcom/google/android/gms/internal/zzckk;

    iput-boolean v2, v0, Lcom/google/android/gms/internal/zzcfi;->zzivn:Z

    const/4 p1, 0x1

    :cond_4
    :goto_0
    iget-boolean v1, v0, Lcom/google/android/gms/internal/zzcfi;->zzivn:Z

    if-eqz v1, :cond_6

    iget-object v1, v0, Lcom/google/android/gms/internal/zzcfi;->zzivl:Lcom/google/android/gms/internal/zzckk;

    new-instance v9, Lcom/google/android/gms/internal/zzckm;

    iget-object v3, v0, Lcom/google/android/gms/internal/zzcfi;->packageName:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/gms/internal/zzcfi;->zzivk:Ljava/lang/String;

    iget-object v5, v1, Lcom/google/android/gms/internal/zzckk;->name:Ljava/lang/String;

    iget-wide v6, v1, Lcom/google/android/gms/internal/zzckk;->zzjgn:J

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzckk;->getValue()Ljava/lang/Object;

    move-result-object v8

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/internal/zzckm;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawg()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcom/google/android/gms/internal/zzcfl;->zza(Lcom/google/android/gms/internal/zzckm;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawm()Lcom/google/android/gms/internal/zzcgj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcgj;->zzayw()Lcom/google/android/gms/internal/zzcgl;

    move-result-object v1

    const-string v2, "User property updated immediately"

    iget-object v3, v0, Lcom/google/android/gms/internal/zzcfi;->packageName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawh()Lcom/google/android/gms/internal/zzcgh;

    move-result-object v4

    iget-object v5, v9, Lcom/google/android/gms/internal/zzckm;->mName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/zzcgh;->zzjd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v9, Lcom/google/android/gms/internal/zzckm;->mValue:Ljava/lang/Object;

    :goto_1
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/zzcgl;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawm()Lcom/google/android/gms/internal/zzcgj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcgj;->zzayr()Lcom/google/android/gms/internal/zzcgl;

    move-result-object v1

    const-string v2, "(2)Too many active user properties, ignoring"

    iget-object v3, v0, Lcom/google/android/gms/internal/zzcfi;->packageName:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/internal/zzcgj;->zzje(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawh()Lcom/google/android/gms/internal/zzcgh;

    move-result-object v4

    iget-object v5, v9, Lcom/google/android/gms/internal/zzckm;->mName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/zzcgh;->zzjd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v9, Lcom/google/android/gms/internal/zzckm;->mValue:Ljava/lang/Object;

    goto :goto_1

    :goto_2
    if-eqz p1, :cond_6

    iget-object p1, v0, Lcom/google/android/gms/internal/zzcfi;->zzivr:Lcom/google/android/gms/internal/zzcfx;

    if-eqz p1, :cond_6

    new-instance p1, Lcom/google/android/gms/internal/zzcfx;

    iget-object v1, v0, Lcom/google/android/gms/internal/zzcfi;->zzivr:Lcom/google/android/gms/internal/zzcfx;

    iget-wide v2, v0, Lcom/google/android/gms/internal/zzcfi;->zzivm:J

    invoke-direct {p1, v1, v2, v3}, Lcom/google/android/gms/internal/zzcfx;-><init>(Lcom/google/android/gms/internal/zzcfx;J)V

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzchj;->zzc(Lcom/google/android/gms/internal/zzcfx;Lcom/google/android/gms/internal/zzcff;)V

    :cond_6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawg()Lcom/google/android/gms/internal/zzcfl;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzcfl;->zza(Lcom/google/android/gms/internal/zzcfi;)Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawm()Lcom/google/android/gms/internal/zzcgj;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcgj;->zzayw()Lcom/google/android/gms/internal/zzcgl;

    move-result-object p1

    const-string p2, "Conditional property added"

    iget-object v1, v0, Lcom/google/android/gms/internal/zzcfi;->packageName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawh()Lcom/google/android/gms/internal/zzcgh;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/gms/internal/zzcfi;->zzivl:Lcom/google/android/gms/internal/zzckk;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzckk;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzcgh;->zzjd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Lcom/google/android/gms/internal/zzcfi;->zzivl:Lcom/google/android/gms/internal/zzckk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzckk;->getValue()Ljava/lang/Object;

    move-result-object v0

    :goto_3
    invoke-virtual {p1, p2, v1, v2, v0}, Lcom/google/android/gms/internal/zzcgl;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_4

    :cond_7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawm()Lcom/google/android/gms/internal/zzcgj;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcgj;->zzayr()Lcom/google/android/gms/internal/zzcgl;

    move-result-object p1

    const-string p2, "Too many conditional properties, ignoring"

    iget-object v1, v0, Lcom/google/android/gms/internal/zzcfi;->packageName:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzcgj;->zzje(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawh()Lcom/google/android/gms/internal/zzcgh;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/gms/internal/zzcfi;->zzivl:Lcom/google/android/gms/internal/zzckk;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzckk;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzcgh;->zzjd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Lcom/google/android/gms/internal/zzcfi;->zzivl:Lcom/google/android/gms/internal/zzckk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzckk;->getValue()Ljava/lang/Object;

    move-result-object v0

    goto :goto_3

    :goto_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawg()Lcom/google/android/gms/internal/zzcfl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcfl;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawg()Lcom/google/android/gms/internal/zzcfl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcfl;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawg()Lcom/google/android/gms/internal/zzcfl;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzcfl;->endTransaction()V

    goto :goto_6

    :goto_5
    throw p1

    :goto_6
    goto :goto_5
.end method

.method final zzb(Lcom/google/android/gms/internal/zzcfx;Lcom/google/android/gms/internal/zzcff;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v2, Lcom/google/android/gms/internal/zzcff;->packageName:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/common/internal/zzbq;->zzgh(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawl()Lcom/google/android/gms/internal/zzche;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzcih;->zzut()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzwu()V

    iget-object v3, v2, Lcom/google/android/gms/internal/zzcff;->packageName:Ljava/lang/String;

    iget-wide v11, v0, Lcom/google/android/gms/internal/zzcfx;->zziwz:J

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawi()Lcom/google/android/gms/internal/zzckn;

    invoke-static/range {p1 .. p2}, Lcom/google/android/gms/internal/zzckn;->zzd(Lcom/google/android/gms/internal/zzcfx;Lcom/google/android/gms/internal/zzcff;)Z

    move-result v4

    if-nez v4, :cond_0

    return-void

    :cond_0
    iget-boolean v4, v2, Lcom/google/android/gms/internal/zzcff;->zzivc:Z

    if-nez v4, :cond_1

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/zzchj;->zzg(Lcom/google/android/gms/internal/zzcff;)V

    return-void

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawg()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzcfl;->beginTransaction()V

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawg()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v4

    invoke-static {v3}, Lcom/google/android/gms/common/internal/zzbq;->zzgh(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzcih;->zzut()V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzcii;->zzwu()V

    const/4 v5, 0x2

    const-wide/16 v6, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    cmp-long v8, v11, v6

    if-gez v8, :cond_2

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzcih;->zzawm()Lcom/google/android/gms/internal/zzcgj;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzcgj;->zzayt()Lcom/google/android/gms/internal/zzcgl;

    move-result-object v4

    const-string v8, "Invalid time querying timed out conditional properties"

    invoke-static {v3}, Lcom/google/android/gms/internal/zzcgj;->zzje(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v4, v8, v9, v10}, Lcom/google/android/gms/internal/zzcgl;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    goto :goto_0

    :cond_2
    const-string v8, "active=0 and app_id=? and abs(? - creation_timestamp) > trigger_timeout"

    new-array v9, v5, [Ljava/lang/String;

    aput-object v3, v9, v13

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v14

    invoke-virtual {v4, v8, v9}, Lcom/google/android/gms/internal/zzcfl;->zzc(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/zzcfi;

    if-eqz v8, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawm()Lcom/google/android/gms/internal/zzcgj;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/gms/internal/zzcgj;->zzayw()Lcom/google/android/gms/internal/zzcgl;

    move-result-object v9

    const-string v10, "User property timed out"

    iget-object v15, v8, Lcom/google/android/gms/internal/zzcfi;->packageName:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawh()Lcom/google/android/gms/internal/zzcgh;

    move-result-object v14

    iget-object v13, v8, Lcom/google/android/gms/internal/zzcfi;->zzivl:Lcom/google/android/gms/internal/zzckk;

    iget-object v13, v13, Lcom/google/android/gms/internal/zzckk;->name:Ljava/lang/String;

    invoke-virtual {v14, v13}, Lcom/google/android/gms/internal/zzcgh;->zzjd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iget-object v14, v8, Lcom/google/android/gms/internal/zzcfi;->zzivl:Lcom/google/android/gms/internal/zzckk;

    invoke-virtual {v14}, Lcom/google/android/gms/internal/zzckk;->getValue()Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v9, v10, v15, v13, v14}, Lcom/google/android/gms/internal/zzcgl;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v9, v8, Lcom/google/android/gms/internal/zzcfi;->zzivp:Lcom/google/android/gms/internal/zzcfx;

    if-eqz v9, :cond_4

    new-instance v9, Lcom/google/android/gms/internal/zzcfx;

    iget-object v10, v8, Lcom/google/android/gms/internal/zzcfi;->zzivp:Lcom/google/android/gms/internal/zzcfx;

    invoke-direct {v9, v10, v11, v12}, Lcom/google/android/gms/internal/zzcfx;-><init>(Lcom/google/android/gms/internal/zzcfx;J)V

    invoke-direct {v1, v9, v2}, Lcom/google/android/gms/internal/zzchj;->zzc(Lcom/google/android/gms/internal/zzcfx;Lcom/google/android/gms/internal/zzcff;)V

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawg()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v9

    iget-object v8, v8, Lcom/google/android/gms/internal/zzcfi;->zzivl:Lcom/google/android/gms/internal/zzckk;

    iget-object v8, v8, Lcom/google/android/gms/internal/zzckk;->name:Ljava/lang/String;

    invoke-virtual {v9, v3, v8}, Lcom/google/android/gms/internal/zzcfl;->zzai(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v13, 0x0

    const/4 v14, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawg()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v4

    invoke-static {v3}, Lcom/google/android/gms/common/internal/zzbq;->zzgh(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzcih;->zzut()V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzcii;->zzwu()V

    cmp-long v8, v11, v6

    if-gez v8, :cond_6

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzcih;->zzawm()Lcom/google/android/gms/internal/zzcgj;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzcgj;->zzayt()Lcom/google/android/gms/internal/zzcgl;

    move-result-object v4

    const-string v8, "Invalid time querying expired conditional properties"

    invoke-static {v3}, Lcom/google/android/gms/internal/zzcgj;->zzje(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v4, v8, v9, v10}, Lcom/google/android/gms/internal/zzcgl;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    goto :goto_2

    :cond_6
    const-string v8, "active<>0 and app_id=? and abs(? - triggered_timestamp) > time_to_live"

    new-array v9, v5, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v3, v9, v10

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    const/4 v13, 0x1

    aput-object v10, v9, v13

    invoke-virtual {v4, v8, v9}, Lcom/google/android/gms/internal/zzcfl;->zzc(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    :goto_2
    new-instance v8, Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_7
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/zzcfi;

    if-eqz v9, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawm()Lcom/google/android/gms/internal/zzcgj;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/android/gms/internal/zzcgj;->zzayw()Lcom/google/android/gms/internal/zzcgl;

    move-result-object v10

    const-string v13, "User property expired"

    iget-object v14, v9, Lcom/google/android/gms/internal/zzcfi;->packageName:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawh()Lcom/google/android/gms/internal/zzcgh;

    move-result-object v15

    iget-object v5, v9, Lcom/google/android/gms/internal/zzcfi;->zzivl:Lcom/google/android/gms/internal/zzckk;

    iget-object v5, v5, Lcom/google/android/gms/internal/zzckk;->name:Ljava/lang/String;

    invoke-virtual {v15, v5}, Lcom/google/android/gms/internal/zzcgh;->zzjd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v15, v9, Lcom/google/android/gms/internal/zzcfi;->zzivl:Lcom/google/android/gms/internal/zzckk;

    invoke-virtual {v15}, Lcom/google/android/gms/internal/zzckk;->getValue()Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v10, v13, v14, v5, v15}, Lcom/google/android/gms/internal/zzcgl;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawg()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v5

    iget-object v10, v9, Lcom/google/android/gms/internal/zzcfi;->zzivl:Lcom/google/android/gms/internal/zzckk;

    iget-object v10, v10, Lcom/google/android/gms/internal/zzckk;->name:Ljava/lang/String;

    invoke-virtual {v5, v3, v10}, Lcom/google/android/gms/internal/zzcfl;->zzaf(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, v9, Lcom/google/android/gms/internal/zzcfi;->zzivt:Lcom/google/android/gms/internal/zzcfx;

    if-eqz v5, :cond_8

    iget-object v5, v9, Lcom/google/android/gms/internal/zzcfi;->zzivt:Lcom/google/android/gms/internal/zzcfx;

    invoke-interface {v8, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawg()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v5

    iget-object v9, v9, Lcom/google/android/gms/internal/zzcfi;->zzivl:Lcom/google/android/gms/internal/zzckk;

    iget-object v9, v9, Lcom/google/android/gms/internal/zzckk;->name:Ljava/lang/String;

    invoke-virtual {v5, v3, v9}, Lcom/google/android/gms/internal/zzcfl;->zzai(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x2

    goto :goto_3

    :cond_9
    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v10, 0x0

    :goto_4
    if-ge v10, v4, :cond_a

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v10, v10, 0x1

    check-cast v5, Lcom/google/android/gms/internal/zzcfx;

    new-instance v9, Lcom/google/android/gms/internal/zzcfx;

    invoke-direct {v9, v5, v11, v12}, Lcom/google/android/gms/internal/zzcfx;-><init>(Lcom/google/android/gms/internal/zzcfx;J)V

    invoke-direct {v1, v9, v2}, Lcom/google/android/gms/internal/zzchj;->zzc(Lcom/google/android/gms/internal/zzcfx;Lcom/google/android/gms/internal/zzcff;)V

    goto :goto_4

    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawg()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v4

    iget-object v5, v0, Lcom/google/android/gms/internal/zzcfx;->name:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/common/internal/zzbq;->zzgh(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v5}, Lcom/google/android/gms/common/internal/zzbq;->zzgh(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzcih;->zzut()V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzcii;->zzwu()V

    cmp-long v8, v11, v6

    if-gez v8, :cond_b

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzcih;->zzawm()Lcom/google/android/gms/internal/zzcgj;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/internal/zzcgj;->zzayt()Lcom/google/android/gms/internal/zzcgl;

    move-result-object v6

    const-string v7, "Invalid time querying triggered conditional properties"

    invoke-static {v3}, Lcom/google/android/gms/internal/zzcgj;->zzje(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzcih;->zzawh()Lcom/google/android/gms/internal/zzcgh;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/zzcgh;->zzjb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v6, v7, v3, v4, v5}, Lcom/google/android/gms/internal/zzcgl;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    const/4 v13, 0x0

    goto :goto_5

    :cond_b
    const-string v6, "active=0 and app_id=? and trigger_event_name=? and abs(? - creation_timestamp) <= trigger_timeout"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v3, v7, v13

    const/4 v3, 0x1

    aput-object v5, v7, v3

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x2

    aput-object v3, v7, v5

    invoke-virtual {v4, v6, v7}, Lcom/google/android/gms/internal/zzcfl;->zzc(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    :goto_5
    new-instance v14, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v14, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_c
    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v15, v4

    check-cast v15, Lcom/google/android/gms/internal/zzcfi;

    if-eqz v15, :cond_c

    iget-object v4, v15, Lcom/google/android/gms/internal/zzcfi;->zzivl:Lcom/google/android/gms/internal/zzckk;

    new-instance v10, Lcom/google/android/gms/internal/zzckm;

    iget-object v5, v15, Lcom/google/android/gms/internal/zzcfi;->packageName:Ljava/lang/String;

    iget-object v6, v15, Lcom/google/android/gms/internal/zzcfi;->zzivk:Ljava/lang/String;

    iget-object v7, v4, Lcom/google/android/gms/internal/zzckk;->name:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzckk;->getValue()Ljava/lang/Object;

    move-result-object v16

    move-object v4, v10

    move-wide v8, v11

    move-object v13, v10

    move-object/from16 v10, v16

    invoke-direct/range {v4 .. v10}, Lcom/google/android/gms/internal/zzckm;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawg()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v4

    invoke-virtual {v4, v13}, Lcom/google/android/gms/internal/zzcfl;->zza(Lcom/google/android/gms/internal/zzckm;)Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawm()Lcom/google/android/gms/internal/zzcgj;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzcgj;->zzayw()Lcom/google/android/gms/internal/zzcgl;

    move-result-object v4

    const-string v5, "User property triggered"

    iget-object v6, v15, Lcom/google/android/gms/internal/zzcfi;->packageName:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawh()Lcom/google/android/gms/internal/zzcgh;

    move-result-object v7

    iget-object v8, v13, Lcom/google/android/gms/internal/zzckm;->mName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/zzcgh;->zzjd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, v13, Lcom/google/android/gms/internal/zzckm;->mValue:Ljava/lang/Object;

    :goto_7
    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/google/android/gms/internal/zzcgl;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_8

    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawm()Lcom/google/android/gms/internal/zzcgj;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzcgj;->zzayr()Lcom/google/android/gms/internal/zzcgl;

    move-result-object v4

    const-string v5, "Too many active user properties, ignoring"

    iget-object v6, v15, Lcom/google/android/gms/internal/zzcfi;->packageName:Ljava/lang/String;

    invoke-static {v6}, Lcom/google/android/gms/internal/zzcgj;->zzje(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawh()Lcom/google/android/gms/internal/zzcgh;

    move-result-object v7

    iget-object v8, v13, Lcom/google/android/gms/internal/zzckm;->mName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/zzcgh;->zzjd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, v13, Lcom/google/android/gms/internal/zzckm;->mValue:Ljava/lang/Object;

    goto :goto_7

    :goto_8
    iget-object v4, v15, Lcom/google/android/gms/internal/zzcfi;->zzivr:Lcom/google/android/gms/internal/zzcfx;

    if-eqz v4, :cond_e

    iget-object v4, v15, Lcom/google/android/gms/internal/zzcfi;->zzivr:Lcom/google/android/gms/internal/zzcfx;

    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_e
    new-instance v4, Lcom/google/android/gms/internal/zzckk;

    invoke-direct {v4, v13}, Lcom/google/android/gms/internal/zzckk;-><init>(Lcom/google/android/gms/internal/zzckm;)V

    iput-object v4, v15, Lcom/google/android/gms/internal/zzcfi;->zzivl:Lcom/google/android/gms/internal/zzckk;

    const/4 v4, 0x1

    iput-boolean v4, v15, Lcom/google/android/gms/internal/zzcfi;->zzivn:Z

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawg()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v5

    invoke-virtual {v5, v15}, Lcom/google/android/gms/internal/zzcfl;->zza(Lcom/google/android/gms/internal/zzcfi;)Z

    const/4 v13, 0x0

    goto/16 :goto_6

    :cond_f
    invoke-direct/range {p0 .. p2}, Lcom/google/android/gms/internal/zzchj;->zzc(Lcom/google/android/gms/internal/zzcfx;Lcom/google/android/gms/internal/zzcff;)V

    check-cast v14, Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v13, 0x0

    :goto_9
    if-ge v13, v0, :cond_10

    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v13, v13, 0x1

    check-cast v3, Lcom/google/android/gms/internal/zzcfx;

    new-instance v4, Lcom/google/android/gms/internal/zzcfx;

    invoke-direct {v4, v3, v11, v12}, Lcom/google/android/gms/internal/zzcfx;-><init>(Lcom/google/android/gms/internal/zzcfx;J)V

    invoke-direct {v1, v4, v2}, Lcom/google/android/gms/internal/zzchj;->zzc(Lcom/google/android/gms/internal/zzcfx;Lcom/google/android/gms/internal/zzcff;)V

    goto :goto_9

    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawg()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcfl;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawg()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcfl;->endTransaction()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawg()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcfl;->endTransaction()V

    goto :goto_b

    :goto_a
    throw v0

    :goto_b
    goto :goto_a
.end method

.method final zzb(Lcom/google/android/gms/internal/zzcfx;Ljava/lang/String;)V
    .locals 24

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v4, p2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawg()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/zzcfl;->zziv(Ljava/lang/String;)Lcom/google/android/gms/internal/zzcfe;

    move-result-object v23

    if-eqz v23, :cond_2

    invoke-virtual/range {v23 .. v23}, Lcom/google/android/gms/internal/zzcfe;->zzuy()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    :cond_0
    :try_start_0
    iget-object v0, v1, Lcom/google/android/gms/internal/zzchj;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbgc;->zzcy(Landroid/content/Context;)Lcom/google/android/gms/internal/zzbgb;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v4, v3}, Lcom/google/android/gms/internal/zzbgb;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual/range {v23 .. v23}, Lcom/google/android/gms/internal/zzcfe;->zzuy()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual/range {v23 .. v23}, Lcom/google/android/gms/internal/zzcfe;->zzuy()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawm()Lcom/google/android/gms/internal/zzcgj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcgj;->zzayt()Lcom/google/android/gms/internal/zzcgl;

    move-result-object v0

    const-string v3, "App version does not match; dropping event. appId"

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/zzcgj;->zzje(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Lcom/google/android/gms/internal/zzcgl;->zzj(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget-object v0, v2, Lcom/google/android/gms/internal/zzcfx;->name:Ljava/lang/String;

    const-string v3, "_ui"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawm()Lcom/google/android/gms/internal/zzcgj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcgj;->zzayt()Lcom/google/android/gms/internal/zzcgl;

    move-result-object v0

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/zzcgj;->zzje(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    const-string v5, "Could not find package. appId"

    invoke-virtual {v0, v5, v3}, Lcom/google/android/gms/internal/zzcgl;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/zzcff;

    move-object v3, v0

    invoke-virtual/range {v23 .. v23}, Lcom/google/android/gms/internal/zzcfe;->getGmpAppId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v23 .. v23}, Lcom/google/android/gms/internal/zzcfe;->zzuy()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v23 .. v23}, Lcom/google/android/gms/internal/zzcfe;->zzawu()J

    move-result-wide v7

    invoke-virtual/range {v23 .. v23}, Lcom/google/android/gms/internal/zzcfe;->zzawv()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {v23 .. v23}, Lcom/google/android/gms/internal/zzcfe;->zzaww()J

    move-result-wide v10

    invoke-virtual/range {v23 .. v23}, Lcom/google/android/gms/internal/zzcfe;->zzawx()J

    move-result-wide v12

    const/4 v14, 0x0

    invoke-virtual/range {v23 .. v23}, Lcom/google/android/gms/internal/zzcfe;->zzawy()Z

    move-result v15

    const/16 v16, 0x0

    invoke-virtual/range {v23 .. v23}, Lcom/google/android/gms/internal/zzcfe;->zzawr()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v23 .. v23}, Lcom/google/android/gms/internal/zzcfe;->zzaxl()J

    move-result-wide v18

    const-wide/16 v20, 0x0

    const/16 v22, 0x0

    invoke-virtual/range {v23 .. v23}, Lcom/google/android/gms/internal/zzcfe;->zzaxm()Z

    move-result v23

    move-object/from16 v4, p2

    invoke-direct/range {v3 .. v23}, Lcom/google/android/gms/internal/zzcff;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;ZZLjava/lang/String;JJIZ)V

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/zzchj;->zzb(Lcom/google/android/gms/internal/zzcfx;Lcom/google/android/gms/internal/zzcff;)V

    return-void

    :cond_2
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawm()Lcom/google/android/gms/internal/zzcgj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcgj;->zzayw()Lcom/google/android/gms/internal/zzcgl;

    move-result-object v0

    const-string v2, "No app data available; dropping event"

    invoke-virtual {v0, v2, v4}, Lcom/google/android/gms/internal/zzcgl;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method final zzb(Lcom/google/android/gms/internal/zzcii;)V
    .locals 0

    iget p1, p0, Lcom/google/android/gms/internal/zzchj;->zzjde:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/zzchj;->zzjde:I

    return-void
.end method

.method final zzb(Lcom/google/android/gms/internal/zzckk;Lcom/google/android/gms/internal/zzcff;)V
    .locals 12

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawl()Lcom/google/android/gms/internal/zzche;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcih;->zzut()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzwu()V

    iget-object v0, p2, Lcom/google/android/gms/internal/zzcff;->zziux:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p2, Lcom/google/android/gms/internal/zzcff;->zzivc:Z

    if-nez v0, :cond_1

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzchj;->zzg(Lcom/google/android/gms/internal/zzcff;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawi()Lcom/google/android/gms/internal/zzckn;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/zzckk;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzckn;->zzjx(Ljava/lang/String;)I

    move-result v4

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x18

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawi()Lcom/google/android/gms/internal/zzckn;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzckk;->name:Ljava/lang/String;

    invoke-static {v3, v2, v1}, Lcom/google/android/gms/internal/zzckn;->zza(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v6

    iget-object v1, p1, Lcom/google/android/gms/internal/zzckk;->name:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object p1, p1, Lcom/google/android/gms/internal/zzckk;->name:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    move v7, p1

    goto :goto_0

    :cond_2
    const/4 v7, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawi()Lcom/google/android/gms/internal/zzckn;

    move-result-object v2

    iget-object v3, p2, Lcom/google/android/gms/internal/zzcff;->packageName:Ljava/lang/String;

    const-string v5, "_ev"

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/internal/zzckn;->zza(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawi()Lcom/google/android/gms/internal/zzckn;

    move-result-object v3

    iget-object v4, p1, Lcom/google/android/gms/internal/zzckk;->name:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzckk;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/zzckn;->zzl(Ljava/lang/String;Ljava/lang/Object;)I

    move-result v8

    if-eqz v8, :cond_6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawi()Lcom/google/android/gms/internal/zzckn;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzckk;->name:Ljava/lang/String;

    invoke-static {v3, v2, v1}, Lcom/google/android/gms/internal/zzckn;->zza(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzckk;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_5

    instance-of v1, p1, Ljava/lang/String;

    if-nez v1, :cond_4

    instance-of v1, p1, Ljava/lang/CharSequence;

    if-eqz v1, :cond_5

    :cond_4
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    move v11, v0

    goto :goto_1

    :cond_5
    const/4 v11, 0x0

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawi()Lcom/google/android/gms/internal/zzckn;

    move-result-object v6

    iget-object v7, p2, Lcom/google/android/gms/internal/zzcff;->packageName:Ljava/lang/String;

    const-string v9, "_ev"

    invoke-virtual/range {v6 .. v11}, Lcom/google/android/gms/internal/zzckn;->zza(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    return-void

    :cond_6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawi()Lcom/google/android/gms/internal/zzckn;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/zzckk;->name:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzckk;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzckn;->zzm(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    new-instance v1, Lcom/google/android/gms/internal/zzckm;

    iget-object v4, p2, Lcom/google/android/gms/internal/zzcff;->packageName:Ljava/lang/String;

    iget-object v5, p1, Lcom/google/android/gms/internal/zzckk;->zzivk:Ljava/lang/String;

    iget-object v6, p1, Lcom/google/android/gms/internal/zzckk;->name:Ljava/lang/String;

    iget-wide v7, p1, Lcom/google/android/gms/internal/zzckk;->zzjgn:J

    move-object v3, v1

    move-object v9, v0

    invoke-direct/range {v3 .. v9}, Lcom/google/android/gms/internal/zzckm;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawm()Lcom/google/android/gms/internal/zzcgj;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcgj;->zzayw()Lcom/google/android/gms/internal/zzcgl;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawh()Lcom/google/android/gms/internal/zzcgh;

    move-result-object v2

    iget-object v3, v1, Lcom/google/android/gms/internal/zzckm;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzcgh;->zzjd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Setting user property"

    invoke-virtual {p1, v3, v2, v0}, Lcom/google/android/gms/internal/zzcgl;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawg()Lcom/google/android/gms/internal/zzcfl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcfl;->beginTransaction()V

    :try_start_0
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzchj;->zzg(Lcom/google/android/gms/internal/zzcff;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawg()Lcom/google/android/gms/internal/zzcfl;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/zzcfl;->zza(Lcom/google/android/gms/internal/zzckm;)Z

    move-result p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawg()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcfl;->setTransactionSuccessful()V

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawm()Lcom/google/android/gms/internal/zzcgj;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcgj;->zzayw()Lcom/google/android/gms/internal/zzcgl;

    move-result-object p1

    const-string p2, "User property set"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawh()Lcom/google/android/gms/internal/zzcgh;

    move-result-object v0

    iget-object v2, v1, Lcom/google/android/gms/internal/zzckm;->mName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzcgh;->zzjd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, v1, Lcom/google/android/gms/internal/zzckm;->mValue:Ljava/lang/Object;

    invoke-virtual {p1, p2, v0, v1}, Lcom/google/android/gms/internal/zzcgl;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    :cond_8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawm()Lcom/google/android/gms/internal/zzcgj;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcgj;->zzayr()Lcom/google/android/gms/internal/zzcgl;

    move-result-object p1

    const-string v0, "Too many unique user properties are set. Ignoring user property"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawh()Lcom/google/android/gms/internal/zzcgh;

    move-result-object v2

    iget-object v3, v1, Lcom/google/android/gms/internal/zzckm;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzcgh;->zzjd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v1, v1, Lcom/google/android/gms/internal/zzckm;->mValue:Ljava/lang/Object;

    invoke-virtual {p1, v0, v2, v1}, Lcom/google/android/gms/internal/zzcgl;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawi()Lcom/google/android/gms/internal/zzckn;

    move-result-object v3

    iget-object v4, p2, Lcom/google/android/gms/internal/zzcff;->packageName:Ljava/lang/String;

    const/16 v5, 0x9

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/google/android/gms/internal/zzckn;->zza(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawg()Lcom/google/android/gms/internal/zzcfl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcfl;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawg()Lcom/google/android/gms/internal/zzcfl;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzcfl;->endTransaction()V

    throw p1
.end method

.method final zzb(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Throwable;",
            "[B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawl()Lcom/google/android/gms/internal/zzche;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcih;->zzut()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzwu()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->zzgh(Ljava/lang/String;)Ljava/lang/String;

    const/4 v0, 0x0

    if-nez p4, :cond_0

    :try_start_0
    new-array p4, v0, [B

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawm()Lcom/google/android/gms/internal/zzcgj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcgj;->zzayx()Lcom/google/android/gms/internal/zzcgl;

    move-result-object v1

    const-string v2, "onConfigFetched. Response size"

    array-length v3, p4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/zzcgl;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawg()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcfl;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawg()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/zzcfl;->zziv(Ljava/lang/String;)Lcom/google/android/gms/internal/zzcfe;

    move-result-object v1

    const/16 v2, 0xc8

    const/16 v3, 0x130

    const/4 v4, 0x1

    if-eq p2, v2, :cond_1

    const/16 v2, 0xcc

    if-eq p2, v2, :cond_1

    if-ne p2, v3, :cond_2

    :cond_1
    if-nez p3, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawm()Lcom/google/android/gms/internal/zzcgj;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzcgj;->zzayt()Lcom/google/android/gms/internal/zzcgl;

    move-result-object p2

    const-string p3, "App does not exist in onConfigFetched. appId"

    invoke-static {p1}, Lcom/google/android/gms/internal/zzcgj;->zzje(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/internal/zzcgl;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_8

    :cond_3
    const/16 v5, 0x194

    if-nez v2, :cond_8

    if-ne p2, v5, :cond_4

    goto :goto_2

    :cond_4
    iget-object p4, p0, Lcom/google/android/gms/internal/zzchj;->zzasd:Lcom/google/android/gms/common/util/zzd;

    invoke-interface {p4}, Lcom/google/android/gms/common/util/zzd;->currentTimeMillis()J

    move-result-wide p4

    invoke-virtual {v1, p4, p5}, Lcom/google/android/gms/internal/zzcfe;->zzar(J)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawg()Lcom/google/android/gms/internal/zzcfl;

    move-result-object p4

    invoke-virtual {p4, v1}, Lcom/google/android/gms/internal/zzcfl;->zza(Lcom/google/android/gms/internal/zzcfe;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawm()Lcom/google/android/gms/internal/zzcgj;

    move-result-object p4

    invoke-virtual {p4}, Lcom/google/android/gms/internal/zzcgj;->zzayx()Lcom/google/android/gms/internal/zzcgl;

    move-result-object p4

    const-string p5, "Fetching config failed. code, error"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p4, p5, v1, p3}, Lcom/google/android/gms/internal/zzcgl;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawj()Lcom/google/android/gms/internal/zzchd;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/google/android/gms/internal/zzchd;->zzjo(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawn()Lcom/google/android/gms/internal/zzcgu;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/internal/zzcgu;->zzizx:Lcom/google/android/gms/internal/zzcgx;

    iget-object p3, p0, Lcom/google/android/gms/internal/zzchj;->zzasd:Lcom/google/android/gms/common/util/zzd;

    invoke-interface {p3}, Lcom/google/android/gms/common/util/zzd;->currentTimeMillis()J

    move-result-wide p3

    invoke-virtual {p1, p3, p4}, Lcom/google/android/gms/internal/zzcgx;->set(J)V

    const/16 p1, 0x1f7

    if-eq p2, p1, :cond_6

    const/16 p1, 0x1ad

    if-ne p2, p1, :cond_5

    goto :goto_1

    :cond_5
    const/4 v4, 0x0

    :cond_6
    :goto_1
    if-eqz v4, :cond_7

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawn()Lcom/google/android/gms/internal/zzcgu;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/internal/zzcgu;->zzizy:Lcom/google/android/gms/internal/zzcgx;

    iget-object p2, p0, Lcom/google/android/gms/internal/zzchj;->zzasd:Lcom/google/android/gms/common/util/zzd;

    invoke-interface {p2}, Lcom/google/android/gms/common/util/zzd;->currentTimeMillis()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/zzcgx;->set(J)V

    :cond_7
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzchj;->zzazx()V

    goto/16 :goto_8

    :cond_8
    :goto_2
    const/4 p3, 0x0

    if-eqz p5, :cond_9

    const-string v2, "Last-Modified"

    invoke-interface {p5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/util/List;

    goto :goto_3

    :cond_9
    move-object p5, p3

    :goto_3
    if-eqz p5, :cond_a

    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_a

    invoke-interface {p5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    goto :goto_4

    :cond_a
    move-object p5, p3

    :goto_4
    if-eq p2, v5, :cond_c

    if-ne p2, v3, :cond_b

    goto :goto_6

    :cond_b
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawj()Lcom/google/android/gms/internal/zzchd;

    move-result-object p3

    invoke-virtual {p3, p1, p4, p5}, Lcom/google/android/gms/internal/zzchd;->zzb(Ljava/lang/String;[BLjava/lang/String;)Z

    move-result p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p3, :cond_d

    :try_start_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawg()Lcom/google/android/gms/internal/zzcfl;

    move-result-object p1

    :goto_5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcfl;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzchj;->zzjdi:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzchj;->zzbab()V

    return-void

    :cond_c
    :goto_6
    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawj()Lcom/google/android/gms/internal/zzchd;

    move-result-object p5

    invoke-virtual {p5, p1}, Lcom/google/android/gms/internal/zzchd;->zzjm(Ljava/lang/String;)Lcom/google/android/gms/internal/zzckv;

    move-result-object p5

    if-nez p5, :cond_d

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawj()Lcom/google/android/gms/internal/zzchd;

    move-result-object p5

    invoke-virtual {p5, p1, p3, p3}, Lcom/google/android/gms/internal/zzchd;->zzb(Ljava/lang/String;[BLjava/lang/String;)Z

    move-result p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez p3, :cond_d

    :try_start_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawg()Lcom/google/android/gms/internal/zzcfl;

    move-result-object p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_5

    :cond_d
    :try_start_5
    iget-object p3, p0, Lcom/google/android/gms/internal/zzchj;->zzasd:Lcom/google/android/gms/common/util/zzd;

    invoke-interface {p3}, Lcom/google/android/gms/common/util/zzd;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/zzcfe;->zzaq(J)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawg()Lcom/google/android/gms/internal/zzcfl;

    move-result-object p3

    invoke-virtual {p3, v1}, Lcom/google/android/gms/internal/zzcfl;->zza(Lcom/google/android/gms/internal/zzcfe;)V

    if-ne p2, v5, :cond_e

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawm()Lcom/google/android/gms/internal/zzcgj;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzcgj;->zzayu()Lcom/google/android/gms/internal/zzcgl;

    move-result-object p2

    const-string p3, "Config not found. Using empty config. appId"

    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/internal/zzcgl;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_7

    :cond_e
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawm()Lcom/google/android/gms/internal/zzcgj;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcgj;->zzayx()Lcom/google/android/gms/internal/zzcgl;

    move-result-object p1

    const-string p3, "Successfully fetched config. Got network response. code, size"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    array-length p4, p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p1, p3, p2, p4}, Lcom/google/android/gms/internal/zzcgl;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzazp()Lcom/google/android/gms/internal/zzcgn;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcgn;->zzzh()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzchj;->zzazw()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzazv()V

    :goto_8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawg()Lcom/google/android/gms/internal/zzcfl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcfl;->setTransactionSuccessful()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawg()Lcom/google/android/gms/internal/zzcfl;

    move-result-object p1

    goto :goto_5

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawg()Lcom/google/android/gms/internal/zzcfl;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzcfl;->endTransaction()V

    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception p1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzchj;->zzjdi:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzchj;->zzbab()V

    goto :goto_a

    :goto_9
    throw p1

    :goto_a
    goto :goto_9
.end method

.method public final zzbn(Z)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzchj;->zzazx()V

    return-void
.end method

.method final zzc(Lcom/google/android/gms/internal/zzcfi;Lcom/google/android/gms/internal/zzcff;)V
    .locals 8

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzcfi;->packageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbq;->zzgh(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzcfi;->zzivl:Lcom/google/android/gms/internal/zzckk;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzcfi;->zzivl:Lcom/google/android/gms/internal/zzckk;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzckk;->name:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbq;->zzgh(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawl()Lcom/google/android/gms/internal/zzche;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcih;->zzut()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzwu()V

    iget-object v0, p2, Lcom/google/android/gms/internal/zzcff;->zziux:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p2, Lcom/google/android/gms/internal/zzcff;->zzivc:Z

    if-nez v0, :cond_1

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzchj;->zzg(Lcom/google/android/gms/internal/zzcff;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawg()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcfl;->beginTransaction()V

    :try_start_0
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzchj;->zzg(Lcom/google/android/gms/internal/zzcff;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawg()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/zzcfi;->packageName:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/zzcfi;->zzivl:Lcom/google/android/gms/internal/zzckk;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzckk;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzcfl;->zzah(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/zzcfi;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawm()Lcom/google/android/gms/internal/zzcgj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcgj;->zzayw()Lcom/google/android/gms/internal/zzcgl;

    move-result-object v1

    const-string v2, "Removing conditional user property"

    iget-object v3, p1, Lcom/google/android/gms/internal/zzcfi;->packageName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawh()Lcom/google/android/gms/internal/zzcgh;

    move-result-object v4

    iget-object v5, p1, Lcom/google/android/gms/internal/zzcfi;->zzivl:Lcom/google/android/gms/internal/zzckk;

    iget-object v5, v5, Lcom/google/android/gms/internal/zzckk;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/zzcgh;->zzjd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gms/internal/zzcgl;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawg()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/gms/internal/zzcfi;->packageName:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzcfi;->zzivl:Lcom/google/android/gms/internal/zzckk;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzckk;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/zzcfl;->zzai(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, v0, Lcom/google/android/gms/internal/zzcfi;->zzivn:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawg()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/gms/internal/zzcfi;->packageName:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzcfi;->zzivl:Lcom/google/android/gms/internal/zzckk;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzckk;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/zzcfl;->zzaf(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v1, p1, Lcom/google/android/gms/internal/zzcfi;->zzivt:Lcom/google/android/gms/internal/zzcfx;

    if-eqz v1, :cond_5

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/google/android/gms/internal/zzcfi;->zzivt:Lcom/google/android/gms/internal/zzcfx;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzcfx;->zziwy:Lcom/google/android/gms/internal/zzcfu;

    if-eqz v2, :cond_3

    iget-object v1, p1, Lcom/google/android/gms/internal/zzcfi;->zzivt:Lcom/google/android/gms/internal/zzcfx;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzcfx;->zziwy:Lcom/google/android/gms/internal/zzcfu;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcfu;->zzayl()Landroid/os/Bundle;

    move-result-object v1

    :cond_3
    move-object v2, v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawi()Lcom/google/android/gms/internal/zzckn;

    move-result-object v1

    iget-object v3, p1, Lcom/google/android/gms/internal/zzcfi;->zzivt:Lcom/google/android/gms/internal/zzcfx;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzcfx;->name:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/gms/internal/zzcfi;->zzivk:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzcfi;->zzivt:Lcom/google/android/gms/internal/zzcfx;

    iget-wide v5, p1, Lcom/google/android/gms/internal/zzcfx;->zziwz:J

    const/4 p1, 0x1

    const/4 v7, 0x0

    move-object v0, v1

    move-object v1, v3

    move-object v3, v4

    move-wide v4, v5

    move v6, p1

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/internal/zzckn;->zza(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JZZ)Lcom/google/android/gms/internal/zzcfx;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzchj;->zzc(Lcom/google/android/gms/internal/zzcfx;Lcom/google/android/gms/internal/zzcff;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawm()Lcom/google/android/gms/internal/zzcgj;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzcgj;->zzayt()Lcom/google/android/gms/internal/zzcgl;

    move-result-object p2

    const-string v0, "Conditional user property doesn\'t exist"

    iget-object v1, p1, Lcom/google/android/gms/internal/zzcfi;->packageName:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzcgj;->zzje(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawh()Lcom/google/android/gms/internal/zzcgh;

    move-result-object v2

    iget-object p1, p1, Lcom/google/android/gms/internal/zzcfi;->zzivl:Lcom/google/android/gms/internal/zzckk;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzckk;->name:Ljava/lang/String;

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/zzcgh;->zzjd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, v1, p1}, Lcom/google/android/gms/internal/zzcgl;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawg()Lcom/google/android/gms/internal/zzcfl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcfl;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawg()Lcom/google/android/gms/internal/zzcfl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcfl;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawg()Lcom/google/android/gms/internal/zzcfl;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzcfl;->endTransaction()V

    throw p1
.end method

.method final zzc(Lcom/google/android/gms/internal/zzckk;Lcom/google/android/gms/internal/zzcff;)V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawl()Lcom/google/android/gms/internal/zzche;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcih;->zzut()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzwu()V

    iget-object v0, p2, Lcom/google/android/gms/internal/zzcff;->zziux:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p2, Lcom/google/android/gms/internal/zzcff;->zzivc:Z

    if-nez v0, :cond_1

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzchj;->zzg(Lcom/google/android/gms/internal/zzcff;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawm()Lcom/google/android/gms/internal/zzcgj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcgj;->zzayw()Lcom/google/android/gms/internal/zzcgl;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawh()Lcom/google/android/gms/internal/zzcgh;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/gms/internal/zzckk;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzcgh;->zzjd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Removing user property"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/zzcgl;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawg()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcfl;->beginTransaction()V

    :try_start_0
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzchj;->zzg(Lcom/google/android/gms/internal/zzcff;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawg()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v0

    iget-object p2, p2, Lcom/google/android/gms/internal/zzcff;->packageName:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzckk;->name:Ljava/lang/String;

    invoke-virtual {v0, p2, v1}, Lcom/google/android/gms/internal/zzcfl;->zzaf(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawg()Lcom/google/android/gms/internal/zzcfl;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzcfl;->setTransactionSuccessful()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawm()Lcom/google/android/gms/internal/zzcgj;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzcgj;->zzayw()Lcom/google/android/gms/internal/zzcgl;

    move-result-object p2

    const-string v0, "User property removed"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawh()Lcom/google/android/gms/internal/zzcgh;

    move-result-object v1

    iget-object p1, p1, Lcom/google/android/gms/internal/zzckk;->name:Ljava/lang/String;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/zzcgh;->zzjd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/internal/zzcgl;->zzj(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawg()Lcom/google/android/gms/internal/zzcfl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcfl;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawg()Lcom/google/android/gms/internal/zzcfl;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzcfl;->endTransaction()V

    throw p1
.end method

.method final zzd(Lcom/google/android/gms/internal/zzcff;)V
    .locals 10

    const-string v0, "app_id=?"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawg()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/gms/internal/zzcff;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzcfl;->zziv(Ljava/lang/String;)Lcom/google/android/gms/internal/zzcfe;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawg()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/gms/internal/zzcff;->packageName:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/zzbq;->zzgh(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcih;->zzut()V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcii;->zzwu()V

    :try_start_0
    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcfl;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const-string v6, "apps"

    invoke-virtual {v3, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    add-int/2addr v6, v5

    const-string v5, "events"

    invoke-virtual {v3, v5, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    add-int/2addr v6, v5

    const-string v5, "user_attributes"

    invoke-virtual {v3, v5, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    add-int/2addr v6, v5

    const-string v5, "conditional_properties"

    invoke-virtual {v3, v5, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    add-int/2addr v6, v5

    const-string v5, "raw_events"

    invoke-virtual {v3, v5, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    add-int/2addr v6, v5

    const-string v5, "raw_events_metadata"

    invoke-virtual {v3, v5, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    add-int/2addr v6, v5

    const-string v5, "queue"

    invoke-virtual {v3, v5, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    add-int/2addr v6, v5

    const-string v5, "audience_filter_values"

    invoke-virtual {v3, v5, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    add-int/2addr v6, v0

    if-lez v6, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcih;->zzawm()Lcom/google/android/gms/internal/zzcgj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcgj;->zzayx()Lcom/google/android/gms/internal/zzcgl;

    move-result-object v0

    const-string v3, "Reset analytics data. app, records"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v2, v4}, Lcom/google/android/gms/internal/zzcgl;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcih;->zzawm()Lcom/google/android/gms/internal/zzcgj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcgj;->zzayr()Lcom/google/android/gms/internal/zzcgl;

    move-result-object v1

    invoke-static {v2}, Lcom/google/android/gms/internal/zzcgj;->zzje(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Error resetting analytics data. appId, error"

    invoke-virtual {v1, v3, v2, v0}, Lcom/google/android/gms/internal/zzcgl;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/google/android/gms/internal/zzchj;->mContext:Landroid/content/Context;

    iget-object v6, p1, Lcom/google/android/gms/internal/zzcff;->packageName:Ljava/lang/String;

    iget-object v7, p1, Lcom/google/android/gms/internal/zzcff;->zziux:Ljava/lang/String;

    iget-boolean v8, p1, Lcom/google/android/gms/internal/zzcff;->zzivc:Z

    iget-boolean v9, p1, Lcom/google/android/gms/internal/zzcff;->zzivj:Z

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/google/android/gms/internal/zzchj;->zza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/google/android/gms/internal/zzcff;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzchj;->zzf(Lcom/google/android/gms/internal/zzcff;)V

    return-void
.end method

.method final zzd(Lcom/google/android/gms/internal/zzcfi;)V
    .locals 1

    iget-object v0, p1, Lcom/google/android/gms/internal/zzcfi;->packageName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzchj;->zzjq(Ljava/lang/String;)Lcom/google/android/gms/internal/zzcff;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzchj;->zzb(Lcom/google/android/gms/internal/zzcfi;Lcom/google/android/gms/internal/zzcff;)V

    :cond_0
    return-void
.end method

.method final zze(Lcom/google/android/gms/internal/zzcff;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawl()Lcom/google/android/gms/internal/zzche;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcih;->zzut()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzwu()V

    iget-object v0, p1, Lcom/google/android/gms/internal/zzcff;->packageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbq;->zzgh(Ljava/lang/String;)Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzchj;->zzg(Lcom/google/android/gms/internal/zzcff;)V

    return-void
.end method

.method final zze(Lcom/google/android/gms/internal/zzcfi;)V
    .locals 1

    iget-object v0, p1, Lcom/google/android/gms/internal/zzcfi;->packageName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzchj;->zzjq(Ljava/lang/String;)Lcom/google/android/gms/internal/zzcff;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzchj;->zzc(Lcom/google/android/gms/internal/zzcfi;Lcom/google/android/gms/internal/zzcff;)V

    :cond_0
    return-void
.end method

.method public final zzf(Lcom/google/android/gms/internal/zzcff;)V
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "_sysu"

    const-string v4, "_sys"

    const-string v5, "_pfo"

    const-string v6, "_uwa"

    const-string v0, "app_id=?"

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawl()Lcom/google/android/gms/internal/zzche;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/internal/zzcih;->zzut()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzwu()V

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, v2, Lcom/google/android/gms/internal/zzcff;->packageName:Ljava/lang/String;

    invoke-static {v7}, Lcom/google/android/gms/common/internal/zzbq;->zzgh(Ljava/lang/String;)Ljava/lang/String;

    iget-object v7, v2, Lcom/google/android/gms/internal/zzcff;->zziux:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawg()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v7

    iget-object v8, v2, Lcom/google/android/gms/internal/zzcff;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/zzcfl;->zziv(Ljava/lang/String;)Lcom/google/android/gms/internal/zzcfe;

    move-result-object v7

    const-wide/16 v8, 0x0

    if-eqz v7, :cond_1

    invoke-virtual {v7}, Lcom/google/android/gms/internal/zzcfe;->getGmpAppId()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    iget-object v10, v2, Lcom/google/android/gms/internal/zzcff;->zziux:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    invoke-virtual {v7, v8, v9}, Lcom/google/android/gms/internal/zzcfe;->zzaq(J)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawg()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v10

    invoke-virtual {v10, v7}, Lcom/google/android/gms/internal/zzcfl;->zza(Lcom/google/android/gms/internal/zzcfe;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawj()Lcom/google/android/gms/internal/zzchd;

    move-result-object v7

    iget-object v10, v2, Lcom/google/android/gms/internal/zzcff;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v10}, Lcom/google/android/gms/internal/zzchd;->zzjp(Ljava/lang/String;)V

    :cond_1
    iget-boolean v7, v2, Lcom/google/android/gms/internal/zzcff;->zzivc:Z

    if-nez v7, :cond_2

    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/internal/zzchj;->zzg(Lcom/google/android/gms/internal/zzcff;)V

    return-void

    :cond_2
    iget-wide v10, v2, Lcom/google/android/gms/internal/zzcff;->zzivh:J

    cmp-long v7, v10, v8

    if-nez v7, :cond_3

    iget-object v7, v1, Lcom/google/android/gms/internal/zzchj;->zzasd:Lcom/google/android/gms/common/util/zzd;

    invoke-interface {v7}, Lcom/google/android/gms/common/util/zzd;->currentTimeMillis()J

    move-result-wide v10

    :cond_3
    iget v7, v2, Lcom/google/android/gms/internal/zzcff;->zzivi:I

    const/4 v15, 0x0

    const/4 v14, 0x1

    if-eqz v7, :cond_4

    if-eq v7, v14, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawm()Lcom/google/android/gms/internal/zzcgj;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/android/gms/internal/zzcgj;->zzayt()Lcom/google/android/gms/internal/zzcgl;

    move-result-object v12

    iget-object v13, v2, Lcom/google/android/gms/internal/zzcff;->packageName:Ljava/lang/String;

    invoke-static {v13}, Lcom/google/android/gms/internal/zzcgj;->zzje(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "Incorrect app type, assuming installed app. appId, appType"

    invoke-virtual {v12, v8, v13, v7}, Lcom/google/android/gms/internal/zzcgl;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v7, 0x0

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawg()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/internal/zzcfl;->beginTransaction()V

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawg()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v8

    iget-object v9, v2, Lcom/google/android/gms/internal/zzcff;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/google/android/gms/internal/zzcfl;->zziv(Ljava/lang/String;)Lcom/google/android/gms/internal/zzcfe;

    move-result-object v8

    if-eqz v8, :cond_6

    invoke-virtual {v8}, Lcom/google/android/gms/internal/zzcfe;->getGmpAppId()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_6

    invoke-virtual {v8}, Lcom/google/android/gms/internal/zzcfe;->getGmpAppId()Ljava/lang/String;

    move-result-object v12

    iget-object v13, v2, Lcom/google/android/gms/internal/zzcff;->zziux:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawm()Lcom/google/android/gms/internal/zzcgj;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/android/gms/internal/zzcgj;->zzayt()Lcom/google/android/gms/internal/zzcgl;

    move-result-object v12

    const-string v13, "New GMP App Id passed in. Removing cached database data. appId"

    invoke-virtual {v8}, Lcom/google/android/gms/internal/zzcfe;->getAppId()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/google/android/gms/internal/zzcgj;->zzje(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v12, v13, v9}, Lcom/google/android/gms/internal/zzcgl;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawg()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v9

    invoke-virtual {v8}, Lcom/google/android/gms/internal/zzcfe;->getAppId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9}, Lcom/google/android/gms/internal/zzcii;->zzwu()V

    invoke-virtual {v9}, Lcom/google/android/gms/internal/zzcih;->zzut()V

    invoke-static {v8}, Lcom/google/android/gms/common/internal/zzbq;->zzgh(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v9}, Lcom/google/android/gms/internal/zzcfl;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v12

    new-array v13, v14, [Ljava/lang/String;

    aput-object v8, v13, v15

    const-string v14, "events"

    invoke-virtual {v12, v14, v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v14

    add-int/2addr v14, v15

    const-string v15, "user_attributes"

    invoke-virtual {v12, v15, v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    add-int/2addr v14, v15

    const-string v15, "conditional_properties"

    invoke-virtual {v12, v15, v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    add-int/2addr v14, v15

    const-string v15, "apps"

    invoke-virtual {v12, v15, v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    add-int/2addr v14, v15

    const-string v15, "raw_events"

    invoke-virtual {v12, v15, v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    add-int/2addr v14, v15

    const-string v15, "raw_events_metadata"

    invoke-virtual {v12, v15, v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    add-int/2addr v14, v15

    const-string v15, "event_filters"

    invoke-virtual {v12, v15, v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    add-int/2addr v14, v15

    const-string v15, "property_filters"

    invoke-virtual {v12, v15, v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    add-int/2addr v14, v15

    const-string v15, "audience_filter_values"

    invoke-virtual {v12, v15, v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    add-int/2addr v14, v0

    if-lez v14, :cond_5

    invoke-virtual {v9}, Lcom/google/android/gms/internal/zzcih;->zzawm()Lcom/google/android/gms/internal/zzcgj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcgj;->zzayx()Lcom/google/android/gms/internal/zzcgl;

    move-result-object v0

    const-string v12, "Deleted application data. app, records"

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v0, v12, v8, v13}, Lcom/google/android/gms/internal/zzcgl;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v9}, Lcom/google/android/gms/internal/zzcih;->zzawm()Lcom/google/android/gms/internal/zzcgj;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/gms/internal/zzcgj;->zzayr()Lcom/google/android/gms/internal/zzcgl;

    move-result-object v9

    const-string v12, "Error deleting application data. appId, error"

    invoke-static {v8}, Lcom/google/android/gms/internal/zzcgj;->zzje(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v9, v12, v8, v0}, Lcom/google/android/gms/internal/zzcgl;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5
    :goto_0
    const/4 v8, 0x0

    :cond_6
    if-eqz v8, :cond_7

    invoke-virtual {v8}, Lcom/google/android/gms/internal/zzcfe;->zzuy()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v8}, Lcom/google/android/gms/internal/zzcfe;->zzuy()Ljava/lang/String;

    move-result-object v0

    iget-object v9, v2, Lcom/google/android/gms/internal/zzcff;->zzicq:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v9, "_pv"

    invoke-virtual {v8}, Lcom/google/android/gms/internal/zzcfe;->zzuy()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v9, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v8, Lcom/google/android/gms/internal/zzcfx;

    const-string v13, "_au"

    new-instance v14, Lcom/google/android/gms/internal/zzcfu;

    invoke-direct {v14, v0}, Lcom/google/android/gms/internal/zzcfu;-><init>(Landroid/os/Bundle;)V

    const-string v15, "auto"

    move-object v12, v8

    const/4 v9, 0x1

    move-wide/from16 v16, v10

    invoke-direct/range {v12 .. v17}, Lcom/google/android/gms/internal/zzcfx;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/zzcfu;Ljava/lang/String;J)V

    invoke-virtual {v1, v8, v2}, Lcom/google/android/gms/internal/zzchj;->zzb(Lcom/google/android/gms/internal/zzcfx;Lcom/google/android/gms/internal/zzcff;)V

    goto :goto_1

    :cond_7
    const/4 v9, 0x1

    :goto_1
    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/internal/zzchj;->zzg(Lcom/google/android/gms/internal/zzcff;)V

    if-nez v7, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawg()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v0

    iget-object v8, v2, Lcom/google/android/gms/internal/zzcff;->packageName:Ljava/lang/String;

    const-string v12, "_f"

    :goto_2
    invoke-virtual {v0, v8, v12}, Lcom/google/android/gms/internal/zzcfl;->zzae(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/zzcft;

    move-result-object v0

    goto :goto_3

    :cond_8
    if-ne v7, v9, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawg()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v0

    iget-object v8, v2, Lcom/google/android/gms/internal/zzcff;->packageName:Ljava/lang/String;

    const-string v12, "_v"

    goto :goto_2

    :cond_9
    const/4 v0, 0x0

    :goto_3
    if-nez v0, :cond_13

    const-wide/32 v12, 0x36ee80

    div-long v14, v10, v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-wide/from16 v18, v10

    const-wide/16 v9, 0x1

    add-long/2addr v14, v9

    mul-long v14, v14, v12

    const-string v0, "_r"

    const-string v11, "_c"

    if-nez v7, :cond_11

    :try_start_3
    new-instance v7, Lcom/google/android/gms/internal/zzckk;

    const-string v13, "_fot"

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    const-string v17, "auto"

    move-object v12, v7

    move-wide/from16 v14, v18

    invoke-direct/range {v12 .. v17}, Lcom/google/android/gms/internal/zzckk;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v7, v2}, Lcom/google/android/gms/internal/zzchj;->zzb(Lcom/google/android/gms/internal/zzckk;Lcom/google/android/gms/internal/zzcff;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawl()Lcom/google/android/gms/internal/zzche;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/internal/zzcih;->zzut()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzwu()V

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v7, v11, v9, v10}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {v7, v0, v9, v10}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-wide/16 v11, 0x0

    invoke-virtual {v7, v6, v11, v12}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {v7, v5, v11, v12}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {v7, v4, v11, v12}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {v7, v3, v11, v12}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object v0, v1, Lcom/google/android/gms/internal/zzchj;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-nez v0, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawm()Lcom/google/android/gms/internal/zzcgj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcgj;->zzayr()Lcom/google/android/gms/internal/zzcgl;

    move-result-object v0

    const-string v3, "PackageManager is null, first open report might be inaccurate. appId"

    iget-object v4, v2, Lcom/google/android/gms/internal/zzcff;->packageName:Ljava/lang/String;

    invoke-static {v4}, Lcom/google/android/gms/internal/zzcgj;->zzje(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/internal/zzcgl;->zzj(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_a

    :cond_a
    :try_start_4
    iget-object v0, v1, Lcom/google/android/gms/internal/zzchj;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbgc;->zzcy(Landroid/content/Context;)Lcom/google/android/gms/internal/zzbgb;

    move-result-object v0

    iget-object v11, v2, Lcom/google/android/gms/internal/zzcff;->packageName:Ljava/lang/String;
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 v14, 0x0

    :try_start_5
    invoke-virtual {v0, v11, v14}, Lcom/google/android/gms/internal/zzbgb;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_5

    :catch_1
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v0

    const/4 v14, 0x0

    :goto_4
    :try_start_6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawm()Lcom/google/android/gms/internal/zzcgj;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/android/gms/internal/zzcgj;->zzayr()Lcom/google/android/gms/internal/zzcgl;

    move-result-object v11

    const-string v12, "Package info is null, first open report might be inaccurate. appId"

    iget-object v13, v2, Lcom/google/android/gms/internal/zzcff;->packageName:Ljava/lang/String;

    invoke-static {v13}, Lcom/google/android/gms/internal/zzcgj;->zzje(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v11, v12, v13, v0}, Lcom/google/android/gms/internal/zzcgl;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    :goto_5
    if-eqz v0, :cond_d

    iget-wide v11, v0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    const-wide/16 v15, 0x0

    cmp-long v13, v11, v15

    if-eqz v13, :cond_d

    iget-wide v11, v0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    iget-wide v14, v0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    cmp-long v0, v11, v14

    if-eqz v0, :cond_b

    invoke-virtual {v7, v6, v9, v10}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const/4 v15, 0x0

    goto :goto_6

    :cond_b
    const/4 v15, 0x1

    :goto_6
    new-instance v0, Lcom/google/android/gms/internal/zzckk;

    const-string v13, "_fi"

    if-eqz v15, :cond_c

    move-wide v11, v9

    goto :goto_7

    :cond_c
    const-wide/16 v11, 0x0

    :goto_7
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    const-string v17, "auto"

    move-object v12, v0

    const/4 v6, 0x0

    move-wide/from16 v14, v18

    invoke-direct/range {v12 .. v17}, Lcom/google/android/gms/internal/zzckk;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/zzchj;->zzb(Lcom/google/android/gms/internal/zzckk;Lcom/google/android/gms/internal/zzcff;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_8

    :cond_d
    const/4 v6, 0x0

    :goto_8
    :try_start_7
    iget-object v0, v1, Lcom/google/android/gms/internal/zzchj;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbgc;->zzcy(Landroid/content/Context;)Lcom/google/android/gms/internal/zzbgb;

    move-result-object v0

    iget-object v11, v2, Lcom/google/android/gms/internal/zzcff;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v11, v6}, Lcom/google/android/gms/internal/zzbgb;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_9

    :catch_3
    move-exception v0

    :try_start_8
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawm()Lcom/google/android/gms/internal/zzcgj;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/internal/zzcgj;->zzayr()Lcom/google/android/gms/internal/zzcgl;

    move-result-object v6

    const-string v11, "Application info is null, first open report might be inaccurate. appId"

    iget-object v12, v2, Lcom/google/android/gms/internal/zzcff;->packageName:Ljava/lang/String;

    invoke-static {v12}, Lcom/google/android/gms/internal/zzcgj;->zzje(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v6, v11, v12, v0}, Lcom/google/android/gms/internal/zzcgl;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    :goto_9
    if-eqz v0, :cond_f

    iget v6, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v8, 0x1

    and-int/2addr v6, v8

    if-eqz v6, :cond_e

    invoke-virtual {v7, v4, v9, v10}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_e
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_f

    invoke-virtual {v7, v3, v9, v10}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_f
    :goto_a
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawg()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v0

    iget-object v3, v2, Lcom/google/android/gms/internal/zzcff;->packageName:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/common/internal/zzbq;->zzgh(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcih;->zzut()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcii;->zzwu()V

    const-string v4, "first_open_count"

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/internal/zzcfl;->zzal(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v3

    const-wide/16 v11, 0x0

    cmp-long v0, v3, v11

    if-ltz v0, :cond_10

    invoke-virtual {v7, v5, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_10
    new-instance v0, Lcom/google/android/gms/internal/zzcfx;

    const-string v13, "_f"

    new-instance v14, Lcom/google/android/gms/internal/zzcfu;

    invoke-direct {v14, v7}, Lcom/google/android/gms/internal/zzcfu;-><init>(Landroid/os/Bundle;)V

    const-string v15, "auto"

    move-object v12, v0

    move-wide/from16 v16, v18

    invoke-direct/range {v12 .. v17}, Lcom/google/android/gms/internal/zzcfx;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/zzcfu;Ljava/lang/String;J)V

    :goto_b
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/zzchj;->zzb(Lcom/google/android/gms/internal/zzcfx;Lcom/google/android/gms/internal/zzcff;)V

    goto :goto_c

    :cond_11
    const/4 v3, 0x1

    if-ne v7, v3, :cond_12

    new-instance v3, Lcom/google/android/gms/internal/zzckk;

    const-string v13, "_fvt"

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    const-string v17, "auto"

    move-object v12, v3

    move-wide/from16 v14, v18

    invoke-direct/range {v12 .. v17}, Lcom/google/android/gms/internal/zzckk;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/internal/zzchj;->zzb(Lcom/google/android/gms/internal/zzckk;Lcom/google/android/gms/internal/zzcff;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawl()Lcom/google/android/gms/internal/zzche;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzcih;->zzut()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzwu()V

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v3, v11, v9, v10}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {v3, v0, v9, v10}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    new-instance v0, Lcom/google/android/gms/internal/zzcfx;

    const-string v13, "_v"

    new-instance v14, Lcom/google/android/gms/internal/zzcfu;

    invoke-direct {v14, v3}, Lcom/google/android/gms/internal/zzcfu;-><init>(Landroid/os/Bundle;)V

    const-string v15, "auto"

    move-object v12, v0

    move-wide/from16 v16, v18

    invoke-direct/range {v12 .. v17}, Lcom/google/android/gms/internal/zzcfx;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/zzcfu;Ljava/lang/String;J)V

    goto :goto_b

    :cond_12
    :goto_c
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v3, "_et"

    invoke-virtual {v0, v3, v9, v10}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    new-instance v3, Lcom/google/android/gms/internal/zzcfx;

    const-string v13, "_e"

    new-instance v14, Lcom/google/android/gms/internal/zzcfu;

    invoke-direct {v14, v0}, Lcom/google/android/gms/internal/zzcfu;-><init>(Landroid/os/Bundle;)V

    const-string v15, "auto"

    move-object v12, v3

    move-wide/from16 v16, v18

    invoke-direct/range {v12 .. v17}, Lcom/google/android/gms/internal/zzcfx;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/zzcfu;Ljava/lang/String;J)V

    :goto_d
    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/internal/zzchj;->zzb(Lcom/google/android/gms/internal/zzcfx;Lcom/google/android/gms/internal/zzcff;)V

    goto :goto_e

    :cond_13
    move-wide/from16 v18, v10

    iget-boolean v0, v2, Lcom/google/android/gms/internal/zzcff;->zzivd:Z

    if-eqz v0, :cond_14

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-instance v3, Lcom/google/android/gms/internal/zzcfx;

    const-string v13, "_cd"

    new-instance v14, Lcom/google/android/gms/internal/zzcfu;

    invoke-direct {v14, v0}, Lcom/google/android/gms/internal/zzcfu;-><init>(Landroid/os/Bundle;)V

    const-string v15, "auto"

    move-object v12, v3

    move-wide/from16 v16, v18

    invoke-direct/range {v12 .. v17}, Lcom/google/android/gms/internal/zzcfx;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/zzcfu;Ljava/lang/String;J)V

    goto :goto_d

    :cond_14
    :goto_e
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawg()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcfl;->setTransactionSuccessful()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawg()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcfl;->endTransaction()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzawg()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcfl;->endTransaction()V

    goto :goto_10

    :goto_f
    throw v0

    :goto_10
    goto :goto_f
.end method

.method final zzi(Ljava/lang/Runnable;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawl()Lcom/google/android/gms/internal/zzche;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcih;->zzut()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzchj;->zzjdd:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzchj;->zzjdd:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzchj;->zzjdd:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final zzjr(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawl()Lcom/google/android/gms/internal/zzche;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzchl;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzchl;-><init>(Lcom/google/android/gms/internal/zzchj;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzche;->zzc(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    const-wide/16 v1, 0x7530

    :try_start_0
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->zzawm()Lcom/google/android/gms/internal/zzcgj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcgj;->zzayr()Lcom/google/android/gms/internal/zzcgl;

    move-result-object v1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzcgj;->zzje(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v2, "Failed to get app instance id. appId"

    invoke-virtual {v1, v2, p1, v0}, Lcom/google/android/gms/internal/zzcgl;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public final zzwh()Lcom/google/android/gms/common/util/zzd;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzchj;->zzasd:Lcom/google/android/gms/common/util/zzd;

    return-object v0
.end method

.method final zzwu()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzchj;->zzdqd:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "AppMeasurement is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
