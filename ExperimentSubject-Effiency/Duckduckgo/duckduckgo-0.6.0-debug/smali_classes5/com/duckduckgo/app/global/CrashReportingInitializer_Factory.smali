.class public final Lcom/duckduckgo/app/global/CrashReportingInitializer_Factory;
.super Ljava/lang/Object;
.source "CrashReportingInitializer_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/duckduckgo/app/global/CrashReportingInitializer;",
        ">;"
    }
.end annotation


# static fields
.field private static transient synthetic $jacocoData:[Z

.field private static final INSTANCE:Lcom/duckduckgo/app/global/CrashReportingInitializer_Factory;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/duckduckgo/app/global/CrashReportingInitializer_Factory;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x3aa094b9271a89c8L    # 2.678796982171806E-26

    const/4 v2, 0x5

    const-string v3, "com/duckduckgo/app/global/CrashReportingInitializer_Factory"

    invoke-static {v0, v1, v3, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/duckduckgo/app/global/CrashReportingInitializer_Factory;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/duckduckgo/app/global/CrashReportingInitializer_Factory;->$jacocoInit()[Z

    move-result-object v0

    .line 7
    new-instance v1, Lcom/duckduckgo/app/global/CrashReportingInitializer_Factory;

    invoke-direct {v1}, Lcom/duckduckgo/app/global/CrashReportingInitializer_Factory;-><init>()V

    sput-object v1, Lcom/duckduckgo/app/global/CrashReportingInitializer_Factory;->INSTANCE:Lcom/duckduckgo/app/global/CrashReportingInitializer_Factory;

    const/4 v1, 0x4

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-static {}, Lcom/duckduckgo/app/global/CrashReportingInitializer_Factory;->$jacocoInit()[Z

    move-result-object v0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public static create()Ldagger/internal/Factory;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ldagger/internal/Factory<",
            "Lcom/duckduckgo/app/global/CrashReportingInitializer;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/duckduckgo/app/global/CrashReportingInitializer_Factory;->$jacocoInit()[Z

    move-result-object v0

    .line 16
    sget-object v1, Lcom/duckduckgo/app/global/CrashReportingInitializer_Factory;->INSTANCE:Lcom/duckduckgo/app/global/CrashReportingInitializer_Factory;

    const/4 v2, 0x2

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method


# virtual methods
.method public get()Lcom/duckduckgo/app/global/CrashReportingInitializer;
    .locals 3

    invoke-static {}, Lcom/duckduckgo/app/global/CrashReportingInitializer_Factory;->$jacocoInit()[Z

    move-result-object v0

    .line 12
    new-instance v1, Lcom/duckduckgo/app/global/CrashReportingInitializer;

    invoke-direct {v1}, Lcom/duckduckgo/app/global/CrashReportingInitializer;-><init>()V

    const/4 v2, 0x1

    aput-boolean v2, v0, v2

    return-object v1
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lcom/duckduckgo/app/global/CrashReportingInitializer_Factory;->$jacocoInit()[Z

    move-result-object v0

    .line 6
    invoke-virtual {p0}, Lcom/duckduckgo/app/global/CrashReportingInitializer_Factory;->get()Lcom/duckduckgo/app/global/CrashReportingInitializer;

    move-result-object v1

    const/4 v2, 0x3

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method
