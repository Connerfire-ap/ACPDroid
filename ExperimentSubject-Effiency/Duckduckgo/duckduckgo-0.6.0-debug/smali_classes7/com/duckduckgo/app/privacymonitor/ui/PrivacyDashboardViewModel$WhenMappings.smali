.class public final synthetic Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel$WhenMappings;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I

.field public static final synthetic $EnumSwitchMapping$1:[I

.field private static transient synthetic $jacocoData:[Z


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel$WhenMappings;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x5b32f5438fc4ab60L

    const/4 v2, 0x1

    const-string v3, "com/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel$WhenMappings"

    invoke-static {v0, v1, v3, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel$WhenMappings;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method static synthetic constructor <clinit>()V
    .locals 6

    invoke-static {}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel$WhenMappings;->$jacocoInit()[Z

    move-result-object v0

    invoke-static {}, Lcom/duckduckgo/app/privacymonitor/HttpsStatus;->values()[Lcom/duckduckgo/app/privacymonitor/HttpsStatus;

    move-result-object v1

    array-length v1, v1

    new-array v1, v1, [I

    sput-object v1, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v2, Lcom/duckduckgo/app/privacymonitor/HttpsStatus;->NONE:Lcom/duckduckgo/app/privacymonitor/HttpsStatus;

    invoke-virtual {v2}, Lcom/duckduckgo/app/privacymonitor/HttpsStatus;->ordinal()I

    move-result v2

    const/4 v3, 0x1

    aput v3, v1, v2

    sget-object v2, Lcom/duckduckgo/app/privacymonitor/HttpsStatus;->MIXED:Lcom/duckduckgo/app/privacymonitor/HttpsStatus;

    invoke-virtual {v2}, Lcom/duckduckgo/app/privacymonitor/HttpsStatus;->ordinal()I

    move-result v2

    const/4 v4, 0x2

    aput v4, v1, v2

    sget-object v2, Lcom/duckduckgo/app/privacymonitor/HttpsStatus;->SECURE:Lcom/duckduckgo/app/privacymonitor/HttpsStatus;

    invoke-virtual {v2}, Lcom/duckduckgo/app/privacymonitor/HttpsStatus;->ordinal()I

    move-result v2

    const/4 v5, 0x3

    aput v5, v1, v2

    invoke-static {}, Lcom/duckduckgo/app/privacymonitor/HttpsStatus;->values()[Lcom/duckduckgo/app/privacymonitor/HttpsStatus;

    move-result-object v1

    array-length v1, v1

    new-array v1, v1, [I

    sput-object v1, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel$WhenMappings;->$EnumSwitchMapping$1:[I

    sget-object v2, Lcom/duckduckgo/app/privacymonitor/HttpsStatus;->NONE:Lcom/duckduckgo/app/privacymonitor/HttpsStatus;

    invoke-virtual {v2}, Lcom/duckduckgo/app/privacymonitor/HttpsStatus;->ordinal()I

    move-result v2

    aput v3, v1, v2

    sget-object v2, Lcom/duckduckgo/app/privacymonitor/HttpsStatus;->MIXED:Lcom/duckduckgo/app/privacymonitor/HttpsStatus;

    invoke-virtual {v2}, Lcom/duckduckgo/app/privacymonitor/HttpsStatus;->ordinal()I

    move-result v2

    aput v4, v1, v2

    sget-object v2, Lcom/duckduckgo/app/privacymonitor/HttpsStatus;->SECURE:Lcom/duckduckgo/app/privacymonitor/HttpsStatus;

    invoke-virtual {v2}, Lcom/duckduckgo/app/privacymonitor/HttpsStatus;->ordinal()I

    move-result v2

    aput v5, v1, v2

    const/4 v1, 0x0

    aput-boolean v3, v0, v1

    return-void
.end method
