.class public final Lcom/duckduckgo/app/global/CrashReportingInitializer;
.super Ljava/lang/Object;
.source "CrashReportingInitializer.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0007\u0008\u0007\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/duckduckgo/app/global/CrashReportingInitializer;",
        "",
        "()V",
        "init",
        "",
        "application",
        "Landroid/app/Application;",
        "duckduckgo-0.6.0_debug"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field private static transient synthetic $jacocoData:[Z


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/duckduckgo/app/global/CrashReportingInitializer;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x7729ffe68f8c2054L    # 1.0479318802000157E266

    const/4 v2, 0x3

    const-string v3, "com/duckduckgo/app/global/CrashReportingInitializer"

    invoke-static {v0, v1, v3, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/duckduckgo/app/global/CrashReportingInitializer;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-static {}, Lcom/duckduckgo/app/global/CrashReportingInitializer;->$jacocoInit()[Z

    move-result-object v0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x2

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public final init(Landroid/app/Application;)V
    .locals 4
    .param p1, "application"    # Landroid/app/Application;

    invoke-static {}, Lcom/duckduckgo/app/global/CrashReportingInitializer;->$jacocoInit()[Z

    move-result-object v0

    const-string v1, "application"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 34
    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "Crash reporting is disabled for DEBUG builds"

    invoke-static {v3, v1}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    aput-boolean v2, v0, v2

    return-void
.end method
