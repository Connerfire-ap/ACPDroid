.class final Lcom/duckduckgo/app/di/DaggerAppComponent$PrivacyDashboardActivitySubcomponentBuilder;
.super Lcom/duckduckgo/app/di/ActivityBindingModule_PrivacyDashboardActivity$PrivacyDashboardActivitySubcomponent$Builder;
.source "DaggerAppComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duckduckgo/app/di/DaggerAppComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PrivacyDashboardActivitySubcomponentBuilder"
.end annotation


# static fields
.field private static transient synthetic $jacocoData:[Z


# instance fields
.field private seedInstance:Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity;

.field final synthetic this$0:Lcom/duckduckgo/app/di/DaggerAppComponent;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/duckduckgo/app/di/DaggerAppComponent$PrivacyDashboardActivitySubcomponentBuilder;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x3d5c11d7aa7228ccL    # -1.0956799919851602E13

    const/16 v2, 0x9

    const-string v3, "com/duckduckgo/app/di/DaggerAppComponent$PrivacyDashboardActivitySubcomponentBuilder"

    invoke-static {v0, v1, v3, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/duckduckgo/app/di/DaggerAppComponent$PrivacyDashboardActivitySubcomponentBuilder;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method private constructor <init>(Lcom/duckduckgo/app/di/DaggerAppComponent;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    invoke-static {}, Lcom/duckduckgo/app/di/DaggerAppComponent$PrivacyDashboardActivitySubcomponentBuilder;->$jacocoInit()[Z

    move-result-object v0

    .line 277
    iput-object p1, p0, Lcom/duckduckgo/app/di/DaggerAppComponent$PrivacyDashboardActivitySubcomponentBuilder;->this$0:Lcom/duckduckgo/app/di/DaggerAppComponent;

    invoke-direct {p0}, Lcom/duckduckgo/app/di/ActivityBindingModule_PrivacyDashboardActivity$PrivacyDashboardActivitySubcomponent$Builder;-><init>()V

    const/4 p1, 0x0

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    return-void
.end method

.method synthetic constructor <init>(Lcom/duckduckgo/app/di/DaggerAppComponent;Lcom/duckduckgo/app/di/DaggerAppComponent$1;)V
    .locals 3
    .param p1, "x0"    # Lcom/duckduckgo/app/di/DaggerAppComponent;
    .param p2, "x1"    # Lcom/duckduckgo/app/di/DaggerAppComponent$1;

    invoke-static {}, Lcom/duckduckgo/app/di/DaggerAppComponent$PrivacyDashboardActivitySubcomponentBuilder;->$jacocoInit()[Z

    move-result-object v0

    .line 277
    invoke-direct {p0, p1}, Lcom/duckduckgo/app/di/DaggerAppComponent$PrivacyDashboardActivitySubcomponentBuilder;-><init>(Lcom/duckduckgo/app/di/DaggerAppComponent;)V

    const/16 v1, 0x8

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public build()Lcom/duckduckgo/app/di/ActivityBindingModule_PrivacyDashboardActivity$PrivacyDashboardActivitySubcomponent;
    .locals 6

    invoke-static {}, Lcom/duckduckgo/app/di/DaggerAppComponent$PrivacyDashboardActivitySubcomponentBuilder;->$jacocoInit()[Z

    move-result-object v0

    .line 285
    iget-object v1, p0, Lcom/duckduckgo/app/di/DaggerAppComponent$PrivacyDashboardActivitySubcomponentBuilder;->seedInstance:Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 289
    new-instance v1, Lcom/duckduckgo/app/di/DaggerAppComponent$PrivacyDashboardActivitySubcomponentImpl;

    iget-object v3, p0, Lcom/duckduckgo/app/di/DaggerAppComponent$PrivacyDashboardActivitySubcomponentBuilder;->this$0:Lcom/duckduckgo/app/di/DaggerAppComponent;

    const/4 v4, 0x0

    invoke-direct {v1, v3, p0, v4}, Lcom/duckduckgo/app/di/DaggerAppComponent$PrivacyDashboardActivitySubcomponentImpl;-><init>(Lcom/duckduckgo/app/di/DaggerAppComponent;Lcom/duckduckgo/app/di/DaggerAppComponent$PrivacyDashboardActivitySubcomponentBuilder;Lcom/duckduckgo/app/di/DaggerAppComponent$1;)V

    const/4 v3, 0x4

    aput-boolean v2, v0, v3

    return-object v1

    .line 285
    :cond_0
    aput-boolean v2, v0, v2

    .line 286
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-class v4, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity;

    const/4 v5, 0x2

    aput-boolean v2, v0, v5

    .line 287
    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " must be set"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x3

    aput-boolean v2, v0, v3

    throw v1
.end method

.method public bridge synthetic build()Ldagger/android/AndroidInjector;
    .locals 4

    invoke-static {}, Lcom/duckduckgo/app/di/DaggerAppComponent$PrivacyDashboardActivitySubcomponentBuilder;->$jacocoInit()[Z

    move-result-object v0

    .line 277
    invoke-virtual {p0}, Lcom/duckduckgo/app/di/DaggerAppComponent$PrivacyDashboardActivitySubcomponentBuilder;->build()Lcom/duckduckgo/app/di/ActivityBindingModule_PrivacyDashboardActivity$PrivacyDashboardActivitySubcomponent;

    move-result-object v1

    const/4 v2, 0x6

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public seedInstance(Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity;)V
    .locals 3
    .param p1, "arg0"    # Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
        }
    .end annotation

    invoke-static {}, Lcom/duckduckgo/app/di/DaggerAppComponent$PrivacyDashboardActivitySubcomponentBuilder;->$jacocoInit()[Z

    move-result-object v0

    .line 294
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity;

    iput-object v1, p0, Lcom/duckduckgo/app/di/DaggerAppComponent$PrivacyDashboardActivitySubcomponentBuilder;->seedInstance:Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity;

    .line 295
    const/4 v1, 0x5

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public bridge synthetic seedInstance(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "arg0"
        }
    .end annotation

    invoke-static {}, Lcom/duckduckgo/app/di/DaggerAppComponent$PrivacyDashboardActivitySubcomponentBuilder;->$jacocoInit()[Z

    move-result-object v0

    .line 277
    check-cast p1, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity;

    invoke-virtual {p0, p1}, Lcom/duckduckgo/app/di/DaggerAppComponent$PrivacyDashboardActivitySubcomponentBuilder;->seedInstance(Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity;)V

    const/4 p1, 0x7

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    return-void
.end method
