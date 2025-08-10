.class public final Lcom/duckduckgo/app/privacymonitor/store/PrivacySettingsSharedPreferences;
.super Ljava/lang/Object;
.source "PrivacySettingsSharedPreferences.kt"

# interfaces
.implements Lcom/duckduckgo/app/privacymonitor/store/PrivacySettingsStore;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/duckduckgo/app/privacymonitor/store/PrivacySettingsSharedPreferences$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0007\u0018\u0000 \u00102\u00020\u0001:\u0001\u0010B\u000f\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0005\u001a\u00020\u00068BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008R$\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\n8V@VX\u0096\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/duckduckgo/app/privacymonitor/store/PrivacySettingsSharedPreferences;",
        "Lcom/duckduckgo/app/privacymonitor/store/PrivacySettingsStore;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "preferences",
        "Landroid/content/SharedPreferences;",
        "getPreferences",
        "()Landroid/content/SharedPreferences;",
        "on",
        "",
        "privacyOn",
        "getPrivacyOn",
        "()Z",
        "setPrivacyOn",
        "(Z)V",
        "Companion",
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
.field private static transient synthetic $jacocoData:[Z = null

.field public static final Companion:Lcom/duckduckgo/app/privacymonitor/store/PrivacySettingsSharedPreferences$Companion;

# The value of this static final field might be set in the static constructor
.field private static final name:Ljava/lang/String; = "com.duckduckgo.app.privacymonitor.settings"

# The value of this static final field might be set in the static constructor
.field private static final privacyOnKey:Ljava/lang/String; = "com.duckduckgo.app.privacymonitor.privacyon"


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/duckduckgo/app/privacymonitor/store/PrivacySettingsSharedPreferences;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0xb335abc1f75baa7L

    const/16 v2, 0xa

    const-string v3, "com/duckduckgo/app/privacymonitor/store/PrivacySettingsSharedPreferences"

    invoke-static {v0, v1, v3, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/duckduckgo/app/privacymonitor/store/PrivacySettingsSharedPreferences;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/duckduckgo/app/privacymonitor/store/PrivacySettingsSharedPreferences;->$jacocoInit()[Z

    move-result-object v0

    new-instance v1, Lcom/duckduckgo/app/privacymonitor/store/PrivacySettingsSharedPreferences$Companion;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/duckduckgo/app/privacymonitor/store/PrivacySettingsSharedPreferences$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v1, Lcom/duckduckgo/app/privacymonitor/store/PrivacySettingsSharedPreferences;->Companion:Lcom/duckduckgo/app/privacymonitor/store/PrivacySettingsSharedPreferences$Companion;

    .line 27
    const-string v1, "com.duckduckgo.app.privacymonitor.settings"

    sput-object v1, Lcom/duckduckgo/app/privacymonitor/store/PrivacySettingsSharedPreferences;->name:Ljava/lang/String;

    .line 28
    const-string v1, "com.duckduckgo.app.privacymonitor.privacyon"

    sput-object v1, Lcom/duckduckgo/app/privacymonitor/store/PrivacySettingsSharedPreferences;->privacyOnKey:Ljava/lang/String;

    const/4 v1, 0x7

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-static {}, Lcom/duckduckgo/app/privacymonitor/store/PrivacySettingsSharedPreferences;->$jacocoInit()[Z

    move-result-object v0

    const-string v1, "context"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x5

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/duckduckgo/app/privacymonitor/store/PrivacySettingsSharedPreferences;->context:Landroid/content/Context;

    const/4 v1, 0x6

    aput-boolean v2, v0, v1

    return-void
.end method

.method public static final synthetic access$getName$cp()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/duckduckgo/app/privacymonitor/store/PrivacySettingsSharedPreferences;->$jacocoInit()[Z

    move-result-object v0

    .line 24
    sget-object v1, Lcom/duckduckgo/app/privacymonitor/store/PrivacySettingsSharedPreferences;->name:Ljava/lang/String;

    const/16 v2, 0x8

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public static final synthetic access$getPrivacyOnKey$cp()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/duckduckgo/app/privacymonitor/store/PrivacySettingsSharedPreferences;->$jacocoInit()[Z

    move-result-object v0

    .line 24
    sget-object v1, Lcom/duckduckgo/app/privacymonitor/store/PrivacySettingsSharedPreferences;->privacyOnKey:Ljava/lang/String;

    const/16 v2, 0x9

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method private final getPreferences()Landroid/content/SharedPreferences;
    .locals 4

    invoke-static {}, Lcom/duckduckgo/app/privacymonitor/store/PrivacySettingsSharedPreferences;->$jacocoInit()[Z

    move-result-object v0

    .line 40
    iget-object v1, p0, Lcom/duckduckgo/app/privacymonitor/store/PrivacySettingsSharedPreferences;->context:Landroid/content/Context;

    sget-object v2, Lcom/duckduckgo/app/privacymonitor/store/PrivacySettingsSharedPreferences;->name:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "context.getSharedPreferences(name, MODE_PRIVATE)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x4

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method


# virtual methods
.method public getPrivacyOn()Z
    .locals 4

    invoke-static {}, Lcom/duckduckgo/app/privacymonitor/store/PrivacySettingsSharedPreferences;->$jacocoInit()[Z

    move-result-object v0

    .line 32
    invoke-direct {p0}, Lcom/duckduckgo/app/privacymonitor/store/PrivacySettingsSharedPreferences;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    sget-object v2, Lcom/duckduckgo/app/privacymonitor/store/PrivacySettingsSharedPreferences;->privacyOnKey:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const/4 v2, 0x0

    aput-boolean v3, v0, v2

    return v1
.end method

.method public setPrivacyOn(Z)V
    .locals 4
    .param p1, "on"    # Z

    invoke-static {}, Lcom/duckduckgo/app/privacymonitor/store/PrivacySettingsSharedPreferences;->$jacocoInit()[Z

    move-result-object v0

    .line 34
    invoke-direct {p0}, Lcom/duckduckgo/app/privacymonitor/store/PrivacySettingsSharedPreferences;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const/4 v2, 0x1

    aput-boolean v2, v0, v2

    .line 35
    sget-object v3, Lcom/duckduckgo/app/privacymonitor/store/PrivacySettingsSharedPreferences;->privacyOnKey:Ljava/lang/String;

    invoke-interface {v1, v3, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const/4 v3, 0x2

    aput-boolean v2, v0, v3

    .line 36
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 37
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    const/4 v1, 0x3

    aput-boolean v2, v0, v1

    return-void
.end method
