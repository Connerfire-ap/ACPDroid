.class public final Lcom/duckduckgo/app/browser/BuildConfig;
.super Ljava/lang/Object;
.source "BuildConfig.java"


# static fields
.field private static transient synthetic $jacocoData:[Z = null

.field public static final APPLICATION_ID:Ljava/lang/String; = "com.duckduckgo.app"

.field public static final BUILD_TYPE:Ljava/lang/String; = "debug"

.field public static final DEBUG:Z

.field public static final VERSION_CODE:I = 0x258

.field public static final VERSION_NAME:Ljava/lang/String; = "0.6.0"


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/duckduckgo/app/browser/BuildConfig;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x6c8e478765dc499fL    # -5.140451760721182E-215

    const/4 v2, 0x2

    const-string v3, "com/duckduckgo/app/browser/BuildConfig"

    invoke-static {v0, v1, v3, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/duckduckgo/app/browser/BuildConfig;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/duckduckgo/app/browser/BuildConfig;->$jacocoInit()[Z

    move-result-object v0

    .line 7
    const-string v1, "true"

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/duckduckgo/app/browser/BuildConfig;->DEBUG:Z

    const/4 v1, 0x1

    aput-boolean v1, v0, v1

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-static {}, Lcom/duckduckgo/app/browser/BuildConfig;->$jacocoInit()[Z

    move-result-object v0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
