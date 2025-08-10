.class public final Lcom/duckduckgo/app/privacymonitor/store/PrivacySettingsSharedPreferences$Companion;
.super Ljava/lang/Object;
.source "PrivacySettingsSharedPreferences.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duckduckgo/app/privacymonitor/store/PrivacySettingsSharedPreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u0014\u0010\u0003\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u0014\u0010\u0007\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\u0006\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/duckduckgo/app/privacymonitor/store/PrivacySettingsSharedPreferences$Companion;",
        "",
        "()V",
        "name",
        "",
        "getName",
        "()Ljava/lang/String;",
        "privacyOnKey",
        "getPrivacyOnKey",
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

    sget-object v0, Lcom/duckduckgo/app/privacymonitor/store/PrivacySettingsSharedPreferences$Companion;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x601cf86f1ff2dec3L    # 9.710754266256074E154

    const/4 v2, 0x4

    const-string v3, "com/duckduckgo/app/privacymonitor/store/PrivacySettingsSharedPreferences$Companion"

    invoke-static {v0, v1, v3, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/duckduckgo/app/privacymonitor/store/PrivacySettingsSharedPreferences$Companion;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method private constructor <init>()V
    .locals 3

    invoke-static {}, Lcom/duckduckgo/app/privacymonitor/store/PrivacySettingsSharedPreferences$Companion;->$jacocoInit()[Z

    move-result-object v0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x2

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 3
    .param p1, "$constructor_marker"    # Lkotlin/jvm/internal/DefaultConstructorMarker;

    invoke-static {}, Lcom/duckduckgo/app/privacymonitor/store/PrivacySettingsSharedPreferences$Companion;->$jacocoInit()[Z

    move-result-object v0

    .line 26
    invoke-direct {p0}, Lcom/duckduckgo/app/privacymonitor/store/PrivacySettingsSharedPreferences$Companion;-><init>()V

    const/4 v1, 0x3

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public final getName()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/duckduckgo/app/privacymonitor/store/PrivacySettingsSharedPreferences$Companion;->$jacocoInit()[Z

    move-result-object v0

    .line 27
    invoke-static {}, Lcom/duckduckgo/app/privacymonitor/store/PrivacySettingsSharedPreferences;->access$getName$cp()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public final getPrivacyOnKey()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/duckduckgo/app/privacymonitor/store/PrivacySettingsSharedPreferences$Companion;->$jacocoInit()[Z

    move-result-object v0

    .line 28
    invoke-static {}, Lcom/duckduckgo/app/privacymonitor/store/PrivacySettingsSharedPreferences;->access$getPrivacyOnKey$cp()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-boolean v2, v0, v2

    return-object v1
.end method
