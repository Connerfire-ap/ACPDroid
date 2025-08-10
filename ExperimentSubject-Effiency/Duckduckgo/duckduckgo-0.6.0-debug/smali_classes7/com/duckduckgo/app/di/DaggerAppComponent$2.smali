.class Lcom/duckduckgo/app/di/DaggerAppComponent$2;
.super Ljava/lang/Object;
.source "DaggerAppComponent.java"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duckduckgo/app/di/DaggerAppComponent;->initialize(Lcom/duckduckgo/app/di/DaggerAppComponent$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavax/inject/Provider<",
        "Lcom/duckduckgo/app/di/ActivityBindingModule_PrivacyDashboardActivity$PrivacyDashboardActivitySubcomponent$Builder;",
        ">;"
    }
.end annotation


# static fields
.field private static transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lcom/duckduckgo/app/di/DaggerAppComponent;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/duckduckgo/app/di/DaggerAppComponent$2;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x20bcae646bc481d2L    # -7.904739206872182E150

    const/4 v2, 0x3

    const-string v3, "com/duckduckgo/app/di/DaggerAppComponent$2"

    invoke-static {v0, v1, v3, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/duckduckgo/app/di/DaggerAppComponent$2;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lcom/duckduckgo/app/di/DaggerAppComponent;)V
    .locals 3
    .param p1, "this$0"    # Lcom/duckduckgo/app/di/DaggerAppComponent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    invoke-static {}, Lcom/duckduckgo/app/di/DaggerAppComponent$2;->$jacocoInit()[Z

    move-result-object v0

    .line 136
    iput-object p1, p0, Lcom/duckduckgo/app/di/DaggerAppComponent$2;->this$0:Lcom/duckduckgo/app/di/DaggerAppComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public get()Lcom/duckduckgo/app/di/ActivityBindingModule_PrivacyDashboardActivity$PrivacyDashboardActivitySubcomponent$Builder;
    .locals 4

    invoke-static {}, Lcom/duckduckgo/app/di/DaggerAppComponent$2;->$jacocoInit()[Z

    move-result-object v0

    .line 141
    new-instance v1, Lcom/duckduckgo/app/di/DaggerAppComponent$PrivacyDashboardActivitySubcomponentBuilder;

    iget-object v2, p0, Lcom/duckduckgo/app/di/DaggerAppComponent$2;->this$0:Lcom/duckduckgo/app/di/DaggerAppComponent;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/duckduckgo/app/di/DaggerAppComponent$PrivacyDashboardActivitySubcomponentBuilder;-><init>(Lcom/duckduckgo/app/di/DaggerAppComponent;Lcom/duckduckgo/app/di/DaggerAppComponent$1;)V

    const/4 v2, 0x1

    aput-boolean v2, v0, v2

    return-object v1
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lcom/duckduckgo/app/di/DaggerAppComponent$2;->$jacocoInit()[Z

    move-result-object v0

    .line 136
    invoke-virtual {p0}, Lcom/duckduckgo/app/di/DaggerAppComponent$2;->get()Lcom/duckduckgo/app/di/ActivityBindingModule_PrivacyDashboardActivity$PrivacyDashboardActivitySubcomponent$Builder;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method
