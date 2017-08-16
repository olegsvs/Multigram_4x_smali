.class public Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;
.super Ljava/lang/Object;
.source "SendMessagesHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/SendMessagesHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocationProvider"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/SendMessagesHelper$LocationProvider$GpsLocationListener;,
        Lorg/telegram/messenger/SendMessagesHelper$LocationProvider$LocationProviderDelegate;
    }
.end annotation


# instance fields
.field private delegate:Lorg/telegram/messenger/SendMessagesHelper$LocationProvider$LocationProviderDelegate;

.field private gpsLocationListener:Lorg/telegram/messenger/SendMessagesHelper$LocationProvider$GpsLocationListener;

.field private lastKnownLocation:Landroid/location/Location;

.field private locationManager:Landroid/location/LocationManager;

.field private locationQueryCancelRunnable:Ljava/lang/Runnable;

.field private networkLocationListener:Lorg/telegram/messenger/SendMessagesHelper$LocationProvider$GpsLocationListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v0, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider$GpsLocationListener;

    invoke-direct {v0, p0, v1}, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider$GpsLocationListener;-><init>(Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;Lorg/telegram/messenger/SendMessagesHelper$1;)V

    iput-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;->gpsLocationListener:Lorg/telegram/messenger/SendMessagesHelper$LocationProvider$GpsLocationListener;

    .line 90
    new-instance v0, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider$GpsLocationListener;

    invoke-direct {v0, p0, v1}, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider$GpsLocationListener;-><init>(Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;Lorg/telegram/messenger/SendMessagesHelper$1;)V

    iput-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;->networkLocationListener:Lorg/telegram/messenger/SendMessagesHelper$LocationProvider$GpsLocationListener;

    .line 132
    return-void
.end method

.method public constructor <init>(Lorg/telegram/messenger/SendMessagesHelper$LocationProvider$LocationProviderDelegate;)V
    .locals 2
    .param p1, "locationProviderDelegate"    # Lorg/telegram/messenger/SendMessagesHelper$LocationProvider$LocationProviderDelegate;

    .prologue
    const/4 v1, 0x0

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v0, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider$GpsLocationListener;

    invoke-direct {v0, p0, v1}, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider$GpsLocationListener;-><init>(Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;Lorg/telegram/messenger/SendMessagesHelper$1;)V

    iput-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;->gpsLocationListener:Lorg/telegram/messenger/SendMessagesHelper$LocationProvider$GpsLocationListener;

    .line 90
    new-instance v0, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider$GpsLocationListener;

    invoke-direct {v0, p0, v1}, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider$GpsLocationListener;-><init>(Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;Lorg/telegram/messenger/SendMessagesHelper$1;)V

    iput-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;->networkLocationListener:Lorg/telegram/messenger/SendMessagesHelper$LocationProvider$GpsLocationListener;

    .line 135
    iput-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;->delegate:Lorg/telegram/messenger/SendMessagesHelper$LocationProvider$LocationProviderDelegate;

    .line 136
    return-void
.end method

.method static synthetic access$300(Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;

    .prologue
    .line 80
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;->locationQueryCancelRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$400(Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;)Landroid/location/Location;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;

    .prologue
    .line 80
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;->lastKnownLocation:Landroid/location/Location;

    return-object v0
.end method

.method static synthetic access$402(Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;Landroid/location/Location;)Landroid/location/Location;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;
    .param p1, "x1"    # Landroid/location/Location;

    .prologue
    .line 80
    iput-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;->lastKnownLocation:Landroid/location/Location;

    return-object p1
.end method

.method static synthetic access$500(Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;)Lorg/telegram/messenger/SendMessagesHelper$LocationProvider$LocationProviderDelegate;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;

    .prologue
    .line 80
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;->delegate:Lorg/telegram/messenger/SendMessagesHelper$LocationProvider$LocationProviderDelegate;

    return-object v0
.end method

.method static synthetic access$600(Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;

    .prologue
    .line 80
    invoke-direct {p0}, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;->cleanup()V

    return-void
.end method

.method private cleanup()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 143
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;->locationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;->gpsLocationListener:Lorg/telegram/messenger/SendMessagesHelper$LocationProvider$GpsLocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 144
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;->locationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;->networkLocationListener:Lorg/telegram/messenger/SendMessagesHelper$LocationProvider$GpsLocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 145
    iput-object v2, p0, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;->lastKnownLocation:Landroid/location/Location;

    .line 146
    iput-object v2, p0, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;->locationQueryCancelRunnable:Ljava/lang/Runnable;

    .line 147
    return-void
.end method


# virtual methods
.method public setDelegate(Lorg/telegram/messenger/SendMessagesHelper$LocationProvider$LocationProviderDelegate;)V
    .locals 0
    .param p1, "locationProviderDelegate"    # Lorg/telegram/messenger/SendMessagesHelper$LocationProvider$LocationProviderDelegate;

    .prologue
    .line 139
    iput-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;->delegate:Lorg/telegram/messenger/SendMessagesHelper$LocationProvider$LocationProviderDelegate;

    .line 140
    return-void
.end method

.method public start()V
    .locals 7

    .prologue
    .line 150
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;->locationManager:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    .line 151
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;->locationManager:Landroid/location/LocationManager;

    .line 154
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;->locationManager:Landroid/location/LocationManager;

    const-string/jumbo v1, "gps"

    const-wide/16 v2, 0x1

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;->gpsLocationListener:Lorg/telegram/messenger/SendMessagesHelper$LocationProvider$GpsLocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    :goto_0
    :try_start_1
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;->locationManager:Landroid/location/LocationManager;

    const-string/jumbo v1, "network"

    const-wide/16 v2, 0x1

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;->networkLocationListener:Lorg/telegram/messenger/SendMessagesHelper$LocationProvider$GpsLocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 164
    :goto_1
    :try_start_2
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;->locationManager:Landroid/location/LocationManager;

    const-string/jumbo v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;->lastKnownLocation:Landroid/location/Location;

    .line 165
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;->lastKnownLocation:Landroid/location/Location;

    if-nez v0, :cond_1

    .line 166
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;->locationManager:Landroid/location/LocationManager;

    const-string/jumbo v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;->lastKnownLocation:Landroid/location/Location;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 171
    :cond_1
    :goto_2
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;->locationQueryCancelRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 172
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;->locationQueryCancelRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 174
    :cond_2
    new-instance v0, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider$1;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider$1;-><init>(Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;)V

    iput-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;->locationQueryCancelRunnable:Ljava/lang/Runnable;

    .line 190
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;->locationQueryCancelRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 191
    return-void

    .line 155
    :catch_0
    move-exception v6

    .line 156
    .local v6, "e":Ljava/lang/Exception;
    invoke-static {v6}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 160
    .end local v6    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v6

    .line 161
    .restart local v6    # "e":Ljava/lang/Exception;
    invoke-static {v6}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 168
    .end local v6    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v6

    .line 169
    .restart local v6    # "e":Ljava/lang/Exception;
    invoke-static {v6}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;->locationManager:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    .line 202
    :goto_0
    return-void

    .line 197
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;->locationQueryCancelRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 198
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;->locationQueryCancelRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 201
    :cond_1
    invoke-direct {p0}, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;->cleanup()V

    goto :goto_0
.end method
