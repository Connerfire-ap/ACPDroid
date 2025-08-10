.class final Lcom/duckduckgo/app/di/DaggerAppComponent$BrowserActivitySubcomponentBuilder;
.super Lcom/duckduckgo/app/di/ActivityBindingModule_BrowserActivity$BrowserActivitySubcomponent$Builder;
.source "DaggerAppComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duckduckgo/app/di/DaggerAppComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BrowserActivitySubcomponentBuilder"
.end annotation


# static fields
.field private static transient synthetic $jacocoData:[Z


# instance fields
.field private seedInstance:Lcom/duckduckgo/app/browser/BrowserActivity;

.field final synthetic this$0:Lcom/duckduckgo/app/di/DaggerAppComponent;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/duckduckgo/app/di/DaggerAppComponent$BrowserActivitySubcomponentBuilder;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x36396d6b06609a16L    # -2.5773336663522725E47

    const/16 v2, 0x8

    const-string v3, "com/duckduckgo/app/di/DaggerAppComponent$BrowserActivitySubcomponentBuilder"

    invoke-static {v0, v1, v3, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/duckduckgo/app/di/DaggerAppComponent$BrowserActivitySubcomponentBuilder;->$jacocoData:[Z

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

    invoke-static {}, Lcom/duckduckgo/app/di/DaggerAppComponent$BrowserActivitySubcomponentBuilder;->$jacocoInit()[Z

    move-result-object v0

    .line 218
    iput-object p1, p0, Lcom/duckduckgo/app/di/DaggerAppComponent$BrowserActivitySubcomponentBuilder;->this$0:Lcom/duckduckgo/app/di/DaggerAppComponent;

    invoke-direct {p0}, Lcom/duckduckgo/app/di/ActivityBindingModule_BrowserActivity$BrowserActivitySubcomponent$Builder;-><init>()V

    const/4 p1, 0x0

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    return-void
.end method

.method synthetic constructor <init>(Lcom/duckduckgo/app/di/DaggerAppComponent;Lcom/duckduckgo/app/di/DaggerAppComponent$1;)V
    .locals 3
    .param p1, "x0"    # Lcom/duckduckgo/app/di/DaggerAppComponent;
    .param p2, "x1"    # Lcom/duckduckgo/app/di/DaggerAppComponent$1;

    invoke-static {}, Lcom/duckduckgo/app/di/DaggerAppComponent$BrowserActivitySubcomponentBuilder;->$jacocoInit()[Z

    move-result-object v0

    .line 218
    invoke-direct {p0, p1}, Lcom/duckduckgo/app/di/DaggerAppComponent$BrowserActivitySubcomponentBuilder;-><init>(Lcom/duckduckgo/app/di/DaggerAppComponent;)V

    const/4 v1, 0x7

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public build()Lcom/duckduckgo/app/di/ActivityBindingModule_BrowserActivity$BrowserActivitySubcomponent;
    .locals 5

    invoke-static {}, Lcom/duckduckgo/app/di/DaggerAppComponent$BrowserActivitySubcomponentBuilder;->$jacocoInit()[Z

    move-result-object v0

    .line 224
    iget-object v1, p0, Lcom/duckduckgo/app/di/DaggerAppComponent$BrowserActivitySubcomponentBuilder;->seedInstance:Lcom/duckduckgo/app/browser/BrowserActivity;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 227
    new-instance v1, Lcom/duckduckgo/app/di/DaggerAppComponent$BrowserActivitySubcomponentImpl;

    iget-object v3, p0, Lcom/duckduckgo/app/di/DaggerAppComponent$BrowserActivitySubcomponentBuilder;->this$0:Lcom/duckduckgo/app/di/DaggerAppComponent;

    const/4 v4, 0x0

    invoke-direct {v1, v3, p0, v4}, Lcom/duckduckgo/app/di/DaggerAppComponent$BrowserActivitySubcomponentImpl;-><init>(Lcom/duckduckgo/app/di/DaggerAppComponent;Lcom/duckduckgo/app/di/DaggerAppComponent$BrowserActivitySubcomponentBuilder;Lcom/duckduckgo/app/di/DaggerAppComponent$1;)V

    const/4 v3, 0x3

    aput-boolean v2, v0, v3

    return-object v1

    .line 224
    :cond_0
    aput-boolean v2, v0, v2

    .line 225
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-class v4, Lcom/duckduckgo/app/browser/BrowserActivity;

    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " must be set"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x2

    aput-boolean v2, v0, v3

    throw v1
.end method

.method public bridge synthetic build()Ldagger/android/AndroidInjector;
    .locals 4

    invoke-static {}, Lcom/duckduckgo/app/di/DaggerAppComponent$BrowserActivitySubcomponentBuilder;->$jacocoInit()[Z

    move-result-object v0

    .line 218
    invoke-virtual {p0}, Lcom/duckduckgo/app/di/DaggerAppComponent$BrowserActivitySubcomponentBuilder;->build()Lcom/duckduckgo/app/di/ActivityBindingModule_BrowserActivity$BrowserActivitySubcomponent;

    move-result-object v1

    const/4 v2, 0x5

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public seedInstance(Lcom/duckduckgo/app/browser/BrowserActivity;)V
    .locals 3
    .param p1, "arg0"    # Lcom/duckduckgo/app/browser/BrowserActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
        }
    .end annotation

    invoke-static {}, Lcom/duckduckgo/app/di/DaggerAppComponent$BrowserActivitySubcomponentBuilder;->$jacocoInit()[Z

    move-result-object v0

    .line 232
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/duckduckgo/app/browser/BrowserActivity;

    iput-object v1, p0, Lcom/duckduckgo/app/di/DaggerAppComponent$BrowserActivitySubcomponentBuilder;->seedInstance:Lcom/duckduckgo/app/browser/BrowserActivity;

    .line 233
    const/4 v1, 0x4

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

    invoke-static {}, Lcom/duckduckgo/app/di/DaggerAppComponent$BrowserActivitySubcomponentBuilder;->$jacocoInit()[Z

    move-result-object v0

    .line 218
    check-cast p1, Lcom/duckduckgo/app/browser/BrowserActivity;

    invoke-virtual {p0, p1}, Lcom/duckduckgo/app/di/DaggerAppComponent$BrowserActivitySubcomponentBuilder;->seedInstance(Lcom/duckduckgo/app/browser/BrowserActivity;)V

    const/4 p1, 0x6

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    return-void
.end method
