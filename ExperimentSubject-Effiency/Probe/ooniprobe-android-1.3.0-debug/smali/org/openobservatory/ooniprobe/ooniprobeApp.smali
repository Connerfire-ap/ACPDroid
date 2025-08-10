.class public Lorg/openobservatory/ooniprobe/ooniprobeApp;
.super Landroid/app/Application;
.source "ooniprobeApp.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    const-string v0, "measurement_kit"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 6

    .line 23
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 24
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 25
    .local v0, "preferences":Landroid/content/SharedPreferences;
    const-string v1, "send_crash"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 26
    .local v1, "send_crash":Ljava/lang/Boolean;
    new-instance v3, Lcom/crashlytics/android/core/CrashlyticsCore$Builder;

    invoke-direct {v3}, Lcom/crashlytics/android/core/CrashlyticsCore$Builder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/crashlytics/android/core/CrashlyticsCore$Builder;->disabled(Z)Lcom/crashlytics/android/core/CrashlyticsCore$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/crashlytics/android/core/CrashlyticsCore$Builder;->build()Lcom/crashlytics/android/core/CrashlyticsCore;

    move-result-object v3

    .line 27
    .local v3, "core":Lcom/crashlytics/android/core/CrashlyticsCore;
    new-array v2, v2, [Lio/fabric/sdk/android/Kit;

    new-instance v4, Lcom/crashlytics/android/Crashlytics$Builder;

    invoke-direct {v4}, Lcom/crashlytics/android/Crashlytics$Builder;-><init>()V

    invoke-virtual {v4, v3}, Lcom/crashlytics/android/Crashlytics$Builder;->core(Lcom/crashlytics/android/core/CrashlyticsCore;)Lcom/crashlytics/android/Crashlytics$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/crashlytics/android/Crashlytics$Builder;->build()Lcom/crashlytics/android/Crashlytics;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v2, v5

    invoke-static {p0, v2}, Lio/fabric/sdk/android/Fabric;->with(Landroid/content/Context;[Lio/fabric/sdk/android/Kit;)Lio/fabric/sdk/android/Fabric;

    .line 28
    invoke-static {p0}, Lorg/openobservatory/ooniprobe/utils/TestLists;->getInstance(Landroid/content/Context;)Lorg/openobservatory/ooniprobe/utils/TestLists;

    invoke-static {}, Lorg/openobservatory/ooniprobe/utils/TestLists;->updateCC_async()V

    .line 30
    new-instance v2, Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;

    invoke-direct {v2}, Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;-><init>()V

    .line 31
    const-string v4, "webui/font-fira-sans-bold.5310ca5fb41a915987df5663660da770.otf"

    invoke-virtual {v2, v4}, Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;->setDefaultFontPath(Ljava/lang/String;)Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;

    move-result-object v2

    .line 32
    const v4, 0x7f030091

    invoke-virtual {v2, v4}, Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;->setFontAttrId(I)Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;

    move-result-object v2

    .line 33
    invoke-virtual {v2}, Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;->build()Luk/co/chrisjenx/calligraphy/CalligraphyConfig;

    move-result-object v2

    .line 30
    invoke-static {v2}, Luk/co/chrisjenx/calligraphy/CalligraphyConfig;->initDefault(Luk/co/chrisjenx/calligraphy/CalligraphyConfig;)V

    .line 35
    invoke-static {p0}, Lcom/google/firebase/FirebaseApp;->initializeApp(Landroid/content/Context;)Lcom/google/firebase/FirebaseApp;

    .line 36
    return-void
.end method
